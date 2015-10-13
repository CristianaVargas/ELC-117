% Alice no País das Maravilhas

% menina(Nome,Horario).

before(A,B,[A|R]):- member(B,R), !.
before(A,B,[H|T]) :- B \== H ,before(A,B,T).

dias(X) :- member(X,[segunda,terca,quarta,quinta,sexta]),!.

mesmoDia(A,B,List) :- A==B.

solucao(Teste) :-
	Teste = [_,_,_,_,_],
	[_,menina(sara,9),_,_,_] = Teste,    % Sara deve ser na terça as 9 horas
	[_,_,menina(nenhuma,8),_,_] = Teste, % Nenhuma deve ser testada quarta as 8
	before(menina(pilar,_),menina(nanda,_),Teste),   % Pilar deve ser atendida em algum momento antes de Nanda
	member(menina(lia,8),Teste), % Lia deve ser testada as 8
	member(menina(rute,8),Teste), % Rute deve ser testada as 8
	mesmoDia(menina(olga,_),menina(mel,_),Teste),	% Olga e Mel devem ser testadas no mesmo dia 
	member(menina(tina,_),Teste).  % Tina pode ser testada a qualquer momento 
