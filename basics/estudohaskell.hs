--import Char

-- Cria uma função para somar 3 valores
somaFinal x y z = x + y + z

-- Cria uma função para incrementar um valor
incrementa n = n + 1

-- Cria função fatorial
fat n 
 | n == 0 = 1
 | n > 0 = n * fat(n - 1)

-- Retorna a cabeca da lista 
cabecaLista n = head n

-- Retorna o resto da lista sem a cabeca
retiraCabecaLista n = tail n

-- Retorna o tamanho da lista
tamanhoLista n = length n

-- Pega apenas os três primeiros da lista
tresPrimeiros n = take 3 n

-- retira três elementos da lista e retorna como a lista ficou
retireTres n = drop 3 n

-- Concatena elementos da lista, retorna a lista concatenada
concatenaElementos m n = m ++ n

-- Reverte numero de elementos da lista
reverteElementos n = reverse n

-- Retorna o elemento passando um index de uma lista
retornaElementoPorIndex n index = n !! index

-- Soma ao receber uma lista
soma n = sum n

-- Produto ao receber uma lista
produto n = product n

-- Mostra se a letra é minuscula ou não
minuscula :: Char -> Bool
minuscula c = c >='a' && c <= 'z'

-- Fatorial novo
fatorial :: Int -> Int
fatorial i = product[1..i]

-- Valor absoluto usando condicional
absoluto :: Float -> Float
absoluto x = if x >= 0 then x else product [x, -1]

-- Valor positivo com if encadeado
sinal :: Int -> Int
sinal x = if x >= 0 then 1 else if x == 0 then 0 else -1

-- Com guardas
guarda :: Int -> Int
guarda x| x > 0 = 1
        | x == 0 = 1
        | otherwise = -1

-- Inverte a posição
negacao :: Bool -> Bool 
negacao n = not n


-- Padrões de tuplas retorna o primeiro
primeiroTupla :: (a, b) -> a
primeiroTupla (a, b) = fst(a, b)

-- Segundo tupla
segundoTupla :: (a, b) -> b
segundoTupla (a, b) = snd(a, b)


-- Concatenação lista
listaConcatenada :: [a] -> [Int]
listaConcatenada [a] = 1 : (2 : (3 : (4 : [])))

-- Lista De numeros impares
listaImpares = [1, 3..10]

-- Pode-se criar listas infinitas [1, 3 ..]

-- Pode-se usar a ideia de conjuntos matemáticos para calculo em lista
-- É como se ele percorresse o vetor e fizesse o calculo com cada valor (Gerador)
conjuntoMatematico = [x ^ 2 | x <- [11, 2, 3, 4, 5]]

-- Cria um conjunto de todos com todos
conjuntoMatTupla = [(x, y) | x <- [1, 3, 5], y <- [2, 4, 6] ]

-- Concatena coma funcao concat
concatenaLista = concat[[1, 2, 3], [7, 8 , 9], [ 22]]


-- Pega todos os divisores
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0 ]

-- Pega numeros primos 
primo :: Int -> Bool
primo n = divisores n == [1, n]

-- Lista todos os primos
listaPrimos :: Int -> [Int]
listaPrimos n = [ x | x <- [2..n], primo x]

-- Tamanho da string
tamanhoString :: String -> Int
tamanhoString a = length a


-- Contar letras minusculas 
contaMinusculas :: String -> Int
contaMinusculas txt =  length [carac | carac <- txt, carac >= 'a' && carac <= 'z']


--stringToUpper :: String -> String
--stringToUpper txt = [toUpper c | c<-txt]




pedacoListaInfinita = take 10 (repeat 'a')

cycleListaInfinita = take 10 (cycle [1, -2])

-- ++ CONCATENA LISTAS
-- !! INDEX DE UMA LISTA
preencher n xs = take n (xs ++ repeat ' ')


-- AULA 4 
-- Funcao anonima recebe um valor após definir a funcao, no caso o 3
funcAnonima = (\x -> 2 * x + 1) 3

-- Como parametros recebe ocultamente um x e um y, é obrigatório
somaAnonima = \x -> (\y -> x+y) 

-- É recursiovo
-- product [2, 3, 4]

leTeclado = do 
    putStr("Escreva uma palavra\n")
    palavra <- getLine
    putStr("Palavra Invertida : \n " ++ reverse palavra ++ "\n")


criaArq :: String -> IO String 
criaArq linha = 
	do putStr ("Nome do Arquivo a ser criado: ") nome <- getLine
      writeFile nome linha
      return (nome)

main = do
      putStr ("Escreva uma linha e tecle ENTER: ")
      linha <- getLine
      nome <- criaArq linha
      putStr ("A linha \n" ++ linha ++ "\nesta no arquivo " ++ nome ++ "!")






































