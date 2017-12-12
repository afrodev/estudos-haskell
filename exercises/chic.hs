{-

chic
- Pega a soma dos algarismos
- se for maior que 9 repete o processo até ficar apenas 1
- Verifica se o número gerado existe nos algarismos

Algoritmo:
- Transforma o número em uma lista de digitos
- soma todos os valores da lista 
- Faz num gerado div 10
	- Se der 0 entao retorna num_gerado
	- Senão chama novamente
- Depois de gerar o número, verifique se ele existe na lista inicial



-}


num2digits_aux :: Int -> [Int] -> [Int]
num2digits_aux 0 lista = lista
num2digits_aux num lista = num2digits_aux (num `div` 10) ([num `mod` 10] ++ lista)

num2Digits :: Int -> [Int]
num2Digits num = num2digits_aux num []

sumList :: [Int] -> Int
sumList list = sum list

chicNumber :: Int -> Int
chicNumber num | ((sumList (num2Digits num)) `div` 10 == 0) = (sumList (num2Digits num))
               | otherwise = chicNumber (sumList (num2Digits num))

chic_aux :: [Int] -> Int -> Bool
chic_aux list num = (num `elem` list)

chic :: Int -> Bool
chic num = chic_aux (num2Digits num) (chicNumber num)
