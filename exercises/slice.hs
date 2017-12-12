{-

Slice
- Pega lista indices i e j, pega os valores entre os indices.

slice lista i j 

Algoritmo:
- Criar um aux que recebe:
	- Uma lista com os valores iniciais
	- Uma lista vazia que será preenchida
	- i
	- j

- Se i <= j então adiciona o lista !! i no array vazio
- Se i > j então retorna a lista vazia preenchida


i = 3 j = 5
entrada = [1,2,3,4,5,6]
resultado = [3,4,5]

-}

slice_aux :: [t] -> [t] -> Int -> Int -> [t]
slice_aux listaCompleta listaPreenchida i j | (i < j) = slice_aux (listaCompleta) (listaPreenchida++[listaCompleta !! i]) (i+1) (j)
                                            | otherwise = listaPreenchida


slice :: [t] -> Int -> Int -> [t]
slice listaCompleta i j = slice_aux listaCompleta [] (i-1) j