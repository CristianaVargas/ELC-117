% Exercício 1) Funciona adicionando 1 em cada elemento do primeiro vetor, gerando um vetor de mesmo tamanho.

pred([],[]).
pred([H|T],[H1|T1]) :- H1 is H+1, pred(T,T1).

% Exercício 2)

ziplus([],[],[]).
ziplus([H|T],[H1|T1],[S|S1]) :- S is H+H1, ziplus(T,T1,S1).

% Exercício 3)

countdown(-1,[]).
countdown(N,[N|L1]) :- AUX is N-1, countdown(AUX,L1).

% Exercício 4)

aux(X,Y,[]) :- X>=Y,!.
aux(X,Y,[H|T]) :- X<Y,H is 2^X, I is X+1, aux(I,Y,T).

potencias(N,L) :- aux(0,N,L).

% Exercício 5)

positivo([],[]).
positivo([H|T],[H1|T1]) :- H > 0 -> H1 = H , positivo(T,T1).
positivo([H|T],H1) :- H =< 0 -> positivo(T,H1).

% Exercício 6)

mesmaPosicao(E,[E|_],[E|_]).
mesmaPosicao(E,[H|T],[H1|T1]) :- mesmaPosicao(E,T,T1).

% Exercício 7)

intercala(E,[],[]) :- !.
intercala(_,H,H) :- length(H,N), N=1, !.
intercala(E,[H|T],[H1,H2|T1]) :- H1 = H, H2 = E, intercala(E,T,T1).

% Exercício 8)

comissao(0,[],[]).
comissao(NP,LP,[H1|T1]) :- NP > 0, comb(H1,LP,R), NP1 is NP-1, comissao(NP1,R,T1).

comb(E,[E|T],T).
comb(E,[_|T],R) :- comb(E,T,R).

% Exercício 9)

azulejos(0,0) :- !.
azulejos(NA,NQ) :- A is floor(sqrt(NA)), B is NA-(A^2), azulejos(B,L), NQ is L+1.

