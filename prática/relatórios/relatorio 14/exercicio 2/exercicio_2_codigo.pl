nicho(peixe, rios).
nicho(jacare, pantano).
local_comum(zebra, margens).

especie_dominante(Animal) :-
    nicho(Animal, X),
    nicho(Animal, Y),
    X \= Y,
    local_comum(Animal, margens).