{-
Função Rotate:
Recebe [lista] e numeroRotacoes

Exemplo:
[1,2,3,4,5] 3


Executando:
- Remove a cabeça
- Concatena no final da lista

[1,2,3,4,5]
[2,3,4,5,1]
[3,4,5,1,2]
[4,5,1,2,3]


-}
lista = [1,3,5,7,9,11]

rotate :: [t] -> Int -> [t]
rotate (x:xs) 0 = (x:xs)
rotate (x:xs) n = rotate (xs++[x]) (n-1)

{-
rotate [1,3,5,7,9,11] 3
rotate [3,5,7,9,11,1] 2
rotate [5,7,9,11,1,3] 1
rotate [7,9,11,1,3,5] 0

-}