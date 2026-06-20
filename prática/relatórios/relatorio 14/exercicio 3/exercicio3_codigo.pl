alimenta(algario, sol).
alimenta(plantacarnivora, terra).
alimenta(algaveneno, sol).
alimenta(plantamorte, terra).

competidores_diretos(A, B) :-
    alimenta(A, sol),
    alimenta(B, sol),
    alimenta(A, terra),
    alimenta(B, terra),
    A \= B.