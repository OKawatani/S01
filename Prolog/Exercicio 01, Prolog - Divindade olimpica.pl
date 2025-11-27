
filho(cronos, zeus).
filho(cronos, poseidon).
filho(cronos, hades).
filho(reia, zeus).
filho(reia, poseidon).
filho(reia, hades).

dominio(zeus, ceu).
dominio(poseidon, mar).
dominio(hades, submundo).

divindade_olimpica(Deus) :-
    filho(cronos, Deus),
    dominio(Deus, Dom),
    (Dom = ceu ; Dom = mar ; Dom = submundo).
