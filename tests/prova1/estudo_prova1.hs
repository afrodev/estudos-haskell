-- Para executar basta abrir o ghci no terminal
-- :load nome do arquivo


-- Exercicio 2 - Haskell - Rotate palavra
-- Rotacionar cada array com o número

rotate array 0 = array
rotate array n = rotate (rotateOne array) (n-1)

rotateOne n = ((tail n) ++ [(head(n))])







