% falta_concluir(Aluno, Disciplina)
% Verdadeira se Disciplina é pré-requisito de alguma matéria
% E o aluno NÃO concluiu essa disciplina.
falta_concluir(Aluno, Disciplina) :-
    prerequisito(_, Disciplina),
    \+ concluiu(Aluno, Disciplina).


% aluno_apto(Aluno, Disciplina)
aluno_apto(Aluno, Disciplina) :-
    disciplina(Disciplina, _, Area),
    Area \= fundamental,                      
    forall(prerequisito(Disciplina, P),       
           concluiu(Aluno, P)).              


aluno_apto(joao, Disciplina).

Disciplina = algoritmos ;
Disciplina = banco_dados ;
Disciplina = sistemas_operacionais ;
Disciplina = teoria_grafos ;
Disciplina = estatistica ;
Disciplina = redes.

aluno_apto(maria, inteligencia_artificial).
false.


