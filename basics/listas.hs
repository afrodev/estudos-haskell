pertence :: [Int] -> Int -> Bool
pertence [] _ = False
pertence (x:xs) n | (x == n) = True
                  | otherwise = pertence xs n

maior :: [Int] -> Int
maior [x] = x
maior (x:xs) | (x > maior xs) = x
             | otherwise = maior xs

todos_pares :: [Int] -> Bool
todos_pares [] = True
todos_pares (x:xs) | (mod x 2 /= 0) = False
                   | otherwise = todos_pares xs

-- Geração de listas
par :: Int -> Bool
par x = mod x 2 == 0

-- O que será aceito, clausulas de filtro
listaFiltro = [x | x <- [1..10], par x, x > 5]

listaTup = [(x, y) | x <- [1..5], y <- [6..10]]
listaDobro = [x*2 | x <- [1..10], x < 5]

-- Ordenação
-- Removo o menor elemento da lista e 
-- adiciono em outra lista qualquer
lista :: [Int]
lista = [5,2,10,1,9]

menor :: [Int] -> Int
menor [x] = x
menor (x:xs) | (x < menor xs) = x
             | otherwise = menor xs

remove_menor :: [Int] -> [Int]
remove_menor [] = []
remove_menor (x:xs) | (x == (menor (x:xs))) = xs
                    | otherwise = (x:remove_menor xs)

ordena :: [Int] -> [Int]
ordena lista = aux_ordena [] lista


aux_ordena :: [Int] -> [Int] -> [Int]
aux_ordena lista_ordenada [] = lista_ordenada
aux_ordena lista_ordenada (x:xs) = aux_ordena (lista_ordenada++[menor (x:xs)]) (remove_menor (x:xs))




















