alimenta(sucuri, agua).
alimenta(sucuri, terra).
nicho(sucuri, rios).
nicho(sucuri, pantano).
nicho(sucuri, profundezas).
especie_chave(Animal) :-
    (alimenta(Animal, agua); alimenta(Animal, terra)),
    (nicho(Animal, rios); nicho(Animal, pantano); nicho(Animal, profundezas)).
