alimenta(plantinha, sol).
alimenta(vaca, plantinha).
alimenta(zumbi, vaca).

fluxo_energia(A, D) :-
    alimenta(D, A).

fluxo_energia(A, D) :-
    alimenta(Z, A),
    fluxo_energia(Z, D).