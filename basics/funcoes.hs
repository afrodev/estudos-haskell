-- Soma de todos os n algarismos
soma(1) = 1
soma(n) = soma(n-1) + n

-- Fatorial
fatorial(0) = 1
fatorial(n) = fatorial(n - 1) * n

-- Fibonacci
fibonacci(0) = 0
fibonacci(1) = 1
fibonacci(n) = fibonacci(n-1) + fibonacci(n-2)


-- Conceito de guarda, é como se fosse o SE
guarda x | (x == 0) = 0
         | (x == 1) = 1
         | otherwise = 10

-- Variável anônima _
e :: Bool -> Bool -> Bool
e False _ = False
e _ False = False
e True True = True


-- Tuplas
tup :: (Int, Int) -> (Int, Int) -> (Int, Int)
tup (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- Tuplas extraindo dados
nomes :: (String, String, String)
nomes = ("Jefs", "Jobs", "Julio")

primeiro (x, _, _) = x
segundo (_, y, _) = y

-- Definindo tipos de dados
type Nome = String
type Idade = Int
type Linguagem = String
type Pessoa = (Nome, Idade, Linguagem)

pessoa :: Pessoa
pessoa = ("Joao", 20, "Haskell")

pegar_nome :: Pessoa -> Nome
pegar_nome (nome, _, _) = nome

-- Listas parte 1 e 2
-- Adiciona um elemento no começo da lista 1:[2,3,4] com :
tamanho_lista [] = 0
tamanho_lista (a:b) = 1 + tamanho_lista (b) 

-- Precisa ter o mesmo número de elementos 
-- Elementos precisam estar na mesma ordem
lista_e_igual :: [Int] -> [Int] -> Bool
lista_e_igual [] [] = True
lista_e_igual _ [] = False
lista_e_igual [] _ = False
lista_e_igual (x:xs) (y:ys) | (x == y) = lista_e_igual (xs) (ys)
                            | otherwise = False


-- Função que recebe uma lista e retorna o inverso da lista
-- Entrada [1,2,3,4] retorno [4,3,2,1]
-- Generalizar pode passar qualquer tipo

inv_aux :: [t] -> [t] -> [t]
inv_aux [] l_inv = l_inv
inv_aux (x:xs) l_inv = inv_aux xs l_inv++[x]

inv_lista :: [t] -> [t]
inv_lista [] = []
inv_lista (x:xs) = inv_lista xs ++ [x]
-- [1,2,3]
-- [2,3]
-- [3]
-- []
-- [] ++ [3] = [3]
-- [3] ++ [2] = [3, 2]
-- [3,2] ++ [1] = [3, 2, 1]

inv_lista2 :: [t] -> [t]
inv_lista2 list = reverse list




