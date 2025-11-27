
habita(zeus, olimpo).
habita(poseidon, mar_profundo).
habita(hades, submundo).
habita(atena, olimpo).
habita(hermes, olimpo).

dominio(zeus, ceu).
dominio(zeus, tempestades).
dominio(poseidon, mar).
dominio(poseidon, terremotos).
dominio(hades, submundo).
dominio(atena, sabedoria).
dominio(atena, estrategia).
dominio(hermes, mensageiro).

deus_maior(Deus) :-
    habita(Deus, olimpo),
    findall(D, dominio(Deus, D), ListaDominios),
    length(ListaDominios, N),
    N >= 2.
