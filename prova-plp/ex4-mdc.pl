
/*
MDC Algoritmo de euclides: 
- recebe dois números e deixa o M para retornar o valor

Algoritmo:
- Se A > B então: A mod B = X | A <- B B <- X
- Se B > A então: B mod A = X | B <- A A <- X
- Caso base, se B é 0 então: M é A

*/

mdc(A, 0, M) :- M is A.
mdc(A, B, M) :- A >= B, X is A mod B, mdc(B, X, M).
mdc(A, B, M) :- A < B, X is B mod A, mdc(A, X, M).
