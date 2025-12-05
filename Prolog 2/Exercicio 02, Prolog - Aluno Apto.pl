
area(inteligencia_artificial, avancada).
area(redes, avancada).
area(programacao1, fundamental).
area(programacao2, fundamental).
area(banco_de_dados, avancada).

prerequisito(inteligencia_artificial, programacao2).
prerequisito(redes, programacao1).
prerequisito(banco_de_dados, programacao1).

concluiu(joao, programacao1).
concluiu(joao, programacao2).

concluiu(maria, programacao1).

falta_concluir(Aluno, Disc) :-
    prerequisito(Alguma, Disc),   
    \+ concluiu(Aluno, Disc).    

aluno_apto(Aluno, Disc) :-
    area(Disc, Area),
    Area \= fundamental,
    \+ falta_concluir(Aluno, _),   
    forall(prerequisito(Disc, P), concluiu(Aluno, P)).


