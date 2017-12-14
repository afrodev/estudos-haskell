/*

Complexos:
- Criar uma estrutura, complexos(a,b)
- Escrever um predicado de potencia(complexo(2,1), 2, P)
- 

*/


potencia(complexo(A,B), N, complexo(X, Y)) :- potencia_aux(complexo(A,B), complexoPotencia(A,B), N, PX, PY), X is PX, Y is PY.


potencia_aux(_, complexoPotencia(C,D), 0, PX, PY) :- PX is C, PY is D.
potencia_aux(complexo(A,B), complexoPotencia(C,D), N, PX, PY) :- 
		X is (A*C)-(B*D), 
		Y is (B*C)+(A*D),
		potencia_aux(complexo(A,B), complexoPotencia(X,Y), N-1, X, Y).

teste(A,B) :- a(10,20,30).