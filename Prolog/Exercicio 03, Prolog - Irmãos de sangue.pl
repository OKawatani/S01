pai(cronos, zeus).
pai(cronos, poseidon).
pai(cronos, hades).
pai(cronos, hera).

mae(reia, zeus).
mae(reia, poseidon).
mae(reia, hades).
mae(reia, hera).

irmaos_germanos(A, B) :-
    pai(P, A), pai(P, B),
    mae(M, A), mae(M, B),
    A \= B.
