{-
dropEvery

Explicação:
- Recebe uma lista e um valor N
- Tem que remover repetidamente a cada N-ésimo numero  


Algoritmo:
- Tem que percorrer a lista completa
- Verificar se existe o atual `mod` N é igual a zero.
	- Se for = não coloca na lista nova
	- Se não for, coloca na lista nova

-}

listaTeste = [1,3,5,7,9,11]

dropEveryAux :: [t] -> [t] -> Int -> Int -> [t]
dropEveryAux [] listaFinal _ _ = listaFinal
dropEveryAux (x:xs) listaFinal atual n | ((atual `mod` n) == 0) = dropEveryAux xs listaFinal (atual+1) n
                                       | otherwise = dropEveryAux xs (listaFinal++[x]) (atual+1) n

dropEvery :: [t] -> Int -> [t]
dropEvery lista n = dropEveryAux lista [] 1 n 