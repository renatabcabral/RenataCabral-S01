% disciplina_raiz(D)
% Verdadeira se D não for pré-requisito de nenhuma disciplina
disciplina_raiz(D) :-
    disciplina(D, _, _),
    \+ prerequisito(_, D).

% disciplina_folha(D)
% Verdadeira se D não tiver pré-requisito
disciplina_folha(D) :-
    disciplina(D, _, _),
    \+ prerequisito(D, _).

disciplina_raiz(D), disciplina(D, _, Area), Area \= aplicacoes.

D = programacao1 ;
D = calculo1 ;
D = teoria_grafos ;
D = estatistica.

