% especialista_comp(Aluno)
% Verdadeira se o aluno concluiu pelo menos 2 disciplinas da área de computação
especialista_comp(Aluno) :-
    findall(D, (concluiu(Aluno, D), disciplina(D, _, computacao)), Lista),
    length(Lista, N),
    N >= 2.

% deficiencia_mat(Aluno)
% Verdadeira se o aluno não concluiu nenhuma disciplina da área de matemática
deficiencia_mat(Aluno) :-
    \+ (concluiu(Aluno, D), disciplina(D, _, matematica)).

 especialista_comp(Aluno), deficiencia_mat(Aluno).

Aluno = lucas.

