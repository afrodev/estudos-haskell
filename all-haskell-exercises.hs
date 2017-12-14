e_primo(2). 
e_primo(3). 
e_primo(P) :- integer(P), P > 3, P mod 2 =\= 0, \+tem_factor(P,3). 
tem_factor(N,L) :- N mod L =:= 0. 
tem_factor(N,L) :- L * L < N, L2 is L + 2, tem_factor(N,L2). 


fibonacci(0,1). 
fibonacci(1,1). 
fibonacci(N,F):-   
N > 1, 
N1 is N - 1, fibonacci(N1,F1), 
N2 is N - 2, fibonacci(N2,F2), 
F is F1 + F2.   


mdc(X,0,Z) :- !, Z = X.
mdc(X,Y,Z) :- R is X mod Y, mdc(Y,R,Z).


%Casos base: P(0) = P(1) = P(2) = 1
padovan(0,1).
padovan(1,1).
padovan(2,1).
%Caso recursivo
padovan(N,P) :-
	N =\= 0,
	N =\= 1,
	N =\= 2,
	N1 is N - 2,
	N2 is N - 3,
	padovan(N1,P1),
	padovan(N2,P2),
	P is P1 + P2.


perfeito(N) :- soma_div(N, N).

%%% soma_div(N, S) eh satisfeito quando S eh a soma dos divisores de N menores que ele proprio
soma_div(N, S) :- N1 is N - 1, soma_div_ateh(N, N1, S).

%%% soma_div_ateh(N, L, S) eh satisfeito quando S eh a soma dos dividores de N ateh L
%%% (ou seja, dividores menores ou iguais a L)
soma_div_ateh(_, 0, 0) :- !.
soma_div_ateh(N, L, S) :-
    L1 is L - 1,
    soma_div_ateh(N, L1, S1),
    parcela(N, L, P),
    S is S1 + P.

%%% parcela(N, L, P) eh satisfeito quando P eh a parcela a somar nos dividores de N relativa a L.
%%% em outras palavras, se L divide N, a parcela eh L; se L nao divide N, a parcela eh zero.
parcela(N, L, 0) :- 0 =\= N mod L.
parcela(N, L, L) :- 0 =:= N mod L.


is_sublist([], []).
is_sublist([_|_] ,[]).
is_sublist([H|T], L) :-
    once(select(H, L, L2)),
    is_sublist(L2, T).


merge_sort([],[]).     % empty list is already sorted
merge_sort([X],[X]).   % single element list is already sorted
merge_sort(List,Sorted):-
    List=[_,_|_],divide(List,L1,L2),     % list with at least two elements is divided into two parts
	merge_sort(L1,Sorted1),merge_sort(L2,Sorted2),  % then each part is sorted
	merge(Sorted1,Sorted2,Sorted).                  % and sorted parts are merged
merge([],L,L).
merge(L,[],L):-L\=[].
merge([X|T1],[Y|T2],[X|T]):-X=<Y,merge(T1,[Y|T2],T).
merge([X|T1],[Y|T2],[Y|T]):-X>Y,merge([X|T1],T2,T).    


quick_sort([],[]).
quick_sort([H|T],Sorted):-
	pivoting(H,T,L1,L2),quick_sort(L1,Sorted1),quick_sort(L2,Sorted2),
	append(Sorted1,[H|Sorted2]).
   
pivoting(H,[],[],[]).
pivoting(H,[X|T],[X|L],G):-X=<H,pivoting(H,T,L,G).
pivoting(H,[X|T],L,[X|G]):-X>H,pivoting(H,T,L,G).


bubble_sort(List,Sorted):-b_sort(List,[],Sorted).
b_sort([],Acc,Acc).
b_sort([H|T],Acc,Sorted):-bubble(H,T,NT,Max),b_sort(NT,[Max|Acc],Sorted).
   
bubble(X,[],[],X).
bubble(X,[Y|T],[Y|NT],Max):-X>Y,bubble(X,T,NT,Max).
bubble(X,[Y|T],[X|NT],Max):-X=<Y,bubble(Y,T,NT,Max).
