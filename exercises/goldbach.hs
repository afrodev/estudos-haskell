{-

Goldbach
- Recebe n e fala quais são os dois números primos que compõe o n

Algoritmo:
- Recebe n
- Pega todos os números que são divisiveis por ele
- Pega todos os fatores primos até n
- Faço uma verificação:
	- se n - atual_primo existe na lista de primos então primos (n, n-atual_primo)
	- senão proximoPrimo 

-}


divisiveis :: Int -> [Int]
divisiveis n = [x | x<-[1..n], n `mod` x == 0]

eh_primo :: Int -> Bool
eh_primo n = divisiveis n == [1, n]

primos :: Int -> [Int]
primos n = [x | x<-[1..n], eh_primo x]

goldbach_aux :: Int -> Int -> (Int, Int)
goldbach_aux num index_primo | (num - ((primos num)!!index_primo)) `elem` (primos num) = (((primos num)!!index_primo), (num - ((primos num)!!index_primo)))
                             | otherwise = goldbach_aux num (index_primo+1)

goldbach :: Int -> (Int, Int)
goldbach n = goldbach_aux n 2