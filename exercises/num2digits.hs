{-

Num2Digits
- Converte um número inteiro em uma lista de números inteiros

Exemplo: 
num2Digits 3701
[3,7,0,1]

num2Digits_aux num lista retorna lista
Caso base: num2digits_aux 0 lista = lista
Caso recursivo: num2Digits num lista = num2Digits_aux (num div 10) lista++[num mod 10]

3701 mod 10 = 1
3701 div 10 = 370

370 mod 10 = 0
370 div 10 = 37

37 mod 10 = 7
37 div 10 = 3

3 mod 10 = 3
3 div 10 = 0

retorna lista


-}

num2digits_aux :: Int -> [Int] -> [Int]
num2digits_aux 0 lista = lista
num2digits_aux num lista = num2digits_aux (num `div` 10) ([num `mod` 10] ++ lista)

num2Digits :: Int -> [Int]
num2Digits num = num2digits_aux num []