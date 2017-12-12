-- Data.Char
import Data.Char

funcAnd = True && False
funcOr = True || False
funcNot = not True
funcDiv = div 3 2 -- divisão inteiro
funcMod = mod 3 2 -- Resto
funcAbs = abs (-20) -- Valor absoluto do inteiro


funcMaior = 2 > 2
funcMenor = 2 < 2
funcMaiorIgual = 2 >= 2
funcMenorIgual = 2 <= 2
funcIgual = 2 == 2
funcDif = 2 /= 2

-- Converte o char para o numero correspondente no ASCII
funcCharToASCII = ord 'a'

-- Converte valor para o caractere
funcNumToChar = chr 120

-- Verifica se é minusculo
funcEhMinusculo = isLower 'a'


-- Verifica se é maiusculo
funcEhMaiusculo = isUpper 'A'

-- Converte para maiusculo
funcToMaiusculo = toUpper 'a'

-- Converte para minusculo
funcToMinusculo = toLower 'A'

funcToDigit = digitToInt '2'
