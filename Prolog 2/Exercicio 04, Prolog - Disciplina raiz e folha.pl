
area(calc1, matematica).
area(calc2, matematica).
area(fisica1, ciencias).
area(prog1, computacao).
area(prog2, computacao).
area(redes, aplicacoes).
area(bd, aplicacoes).

prerequisito(calc2, calc1).
prerequisito(fisica1, calc1).
prerequisito(prog2, prog1).
prerequisito(redes, prog2).
prerequisito(bd, prog1).

disciplina_raiz(D) :-
    area(D, _),
    \+ prerequisito(D, _).

disciplina_folha(D) :-
    area(D, _),
    \+ (prerequisito(Outra, D)).

