
area(prog1, computacao).
area(algoritmos, computacao).
area(redes, computacao).

area(calculo1, matematica).
area(geometria, matematica).

area(fisica1, ciencias).

concluiu(joao, prog1).
concluiu(joao, redes).

concluiu(maria, geometria).

concluiu(pedro, fisica1).

especialista_comp(Aluno) :-
    concluiu(Aluno, D1),
    concluiu(Aluno, D2),
    D1 \= D2,
    area(D1, computacao),
    area(D2, computacao).

deficiencia_mat(Aluno) :-
    \+ (concluiu(Aluno, D), area(D, matematica)).
