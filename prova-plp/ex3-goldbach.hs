{-
Goldbach
- Um número qualquer é a soma de dois números primos
- 12 = 5+7
- Recebe apenas um N e retorna uma tupla de dois números primos.

Algoritmo:
- 1º descobre todos os fatores de um número (todos os números divisiveis)
- 2º descobre se os únicos fatores são 1 e N, se for é primo
- 3º Pego N, subtraio um número primo e vejo se o resto é um primo também.
		- se for o número primo e a subtração são o resultado da tupla
		- se não for fazer o mesmo com o próximo primo.
-}

divisiveis :: Int -> [Int]
divisiveis n = [x | x<-[1..n], n `mod` x == 0]

eh_primo :: Int -> Bool
eh_primo n = divisiveis n == [1,n] 

primos :: Int -> [Int]
primos limite = [x | x<-[1..(limite*limite)], eh_primo x]


goldbach_aux :: Int -> Int -> (Int,Int)
goldbach_aux n atual | eh_primo (n - ((primos n)!!atual)) = (((primos n)!!atual), n - ((primos n)!!atual))
                     | otherwise = goldbach_aux n (atual+1)

goldbach :: Int -> (Int,Int)
goldbach n = goldbach_aux n 2