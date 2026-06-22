hangar(hangar_beta).
hangar(hangar_gamma).
componente(ia_navegacao, sistemas, 2).
componente(sensor, fundamental, 1).
componente(antena, fundamental, 1).
precisa(ia_navegacao, sensor).
precisa(ia_navegacao, antena).
possui(hangar_beta, sensor).
possui(hangar_beta, antena).
possui(hangar_gamma, sensor).
item_faltante(Hangar, Peca) :-
    hangar(Hangar),
    componente(Sistema, sistemas, _),
    precisa(Sistema, Peca),
    \+ possui(Hangar, Peca).
pode_montar(Hangar, Componente) :-
    hangar(Hangar),
    componente(Componente, Categoria, _),
    Categoria \= fundamental,
    \+ (
        precisa(Componente, Requisito),
        \+ possui(Hangar, Requisito)
    ).