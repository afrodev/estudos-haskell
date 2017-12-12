03 - PROLOG




Coloco que 2 e 3 são primos;
Se for inteiro E 
um número > 3 E 
não é par E 
numero mod (iteracao) não for igual a zero.


e_primo(2).
e_primo(3).
e_primo(P) :- integer(P), P > 3, P mod 2 =\= 0, \+ tem_fator(P, 3).


tem_fator(N, L) :- L * L < N, L2 is L + 2, tem_fator(N, L2).
tem_fator(N, L) :- N mod L =:= 0. 


_____________________________________________________________


N = 9 | 
L = 3 | 3* 3 = 9 < 9 FALSE


N = 11  |  
L =   3  | 5  
L2 = 5  |


4 = 2 * 2
5 = PRIMO
6 = É PAR
7 = PRIMO
8 = PAR
9 = 3* 3
10 = É PAR
11 = PRIMO
12 = PAR
13 = PRIMO
14 = PAR
15 = 15/3


NUMERO PRIMO
NAO É PAR 
NÃO É MULTIPLICACAO DE NUMEROS IGUAIS
