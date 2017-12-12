{-

DropEvery
- Recebe uma lista e um número 
- Tem a cada vez que for o número precisa remove o indice.

Algoritmo:
- Funcao que recebe uma lista e um número
- Cria uma funcao auxiliar que recebe e retorna uma lista:
	- listaCompleta
	- listaPreenchida
	- numero
	- atual
	- tamanho
- Se atual == tamanho então retorna lista preenchida
- Toda vez que atual `mod` numero == 0 não adiciona na lista preenchida
- Se o atual mod numero != 0 então adiciona na lista preenchida


-}

drop_every_aux :: [t] -> [t] -> Int -> Int -> Int -> [t]
drop_every_aux listaCompleta listaPreenchida numero atual tamanho | (atual == tamanho) = listaPreenchida
                                                             | ((atual+1) `mod` numero /= 0) = drop_every_aux (listaCompleta) (listaPreenchida++([listaCompleta!!atual])) (numero) (atual+1) tamanho
                                                             | otherwise = drop_every_aux (listaCompleta) (listaPreenchida) (numero) (atual+1) tamanho

drop_every :: [t] -> Int -> [t]
drop_every lista numero = drop_every_aux lista [] numero 0 (length(lista))