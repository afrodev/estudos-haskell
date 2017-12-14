{-
Slice

recebe uma lista genérica, i e j 
Pego todos os elementos da lista entre o i e o j (contando i e o j)

Algoritmo:
- Tenho que fazer a recursão do i, somando i+1 até chegar no j.
- Preciso de uma função auxiliar que vai colocando em uma lista vazia
- A slice_aux faz a recursão adicionando os elementos na lista final.


slice chama uma slice aux
slice lista i j

slice_aux lista listaFinal i j
-}

listaTeste = [3,5,7,11,13,17]

slice_aux :: [t] -> [t] -> Int -> Int -> [t]
slice_aux lista listaFinal i j | (i == j) = (listaFinal++[(lista!!i)])
                               | otherwise = slice_aux lista (listaFinal++[lista!!i]) (i+1) j

slice :: [t] -> Int -> Int -> [t]
slice lista i j = slice_aux lista [] (i-1) (j-1)