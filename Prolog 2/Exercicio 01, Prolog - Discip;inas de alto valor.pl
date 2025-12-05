disciplina(calculo2, matematica, 4).
disciplina(algebra, matematica, 4).
disciplina(fisica1, fisica, 6).
disciplina(fisica2, fisica, 7).

prerequisito(calculo2, calculo1).
prerequisito(fisica1, calculo1).
prerequisito(fisica2, fisica1).
prerequisito(fisica2, calculo1).

alto_impacto(D) :-
    disciplina(D, _, Cred),
    Cred > 5,
    prerequisito(D1, D),
    prerequisito(D2, D),
    D1 \= D2.

disciplina_sem_prereq(D) :-
    disciplina(D, _, _),
    \+ prerequisito(_, D).
