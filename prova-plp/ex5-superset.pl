/*
Superset
- Recebe duas listas A e B
- Preciso ver se todos os elementos da B estão em A

Algoritmo:
- Fazer um função pertence pra verificar se há aquele elementos
- Fazer superset pra fazer a recursão através da cabeça de B 
	e ver se ela está presente em A
*/

pertence(B, [B|_]).
pertence(B, [_|XS]) :- pertence(B, XS).

superset(_, []) :- true.
superset(A,[Y|YS]) :- pertence(Y,A), superset(A, YS).