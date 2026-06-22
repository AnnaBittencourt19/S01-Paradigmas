componente(motor, propulsao, 8).
componente(sensor, sistemas, 2).
componente(modulo_controle, sistemas, 5).
precisa(modulo_controle, sensor).
peca_raiz(P) :-
    componente(P, _, _),
    \+ precisa(P, _).
peca_final(P) :-
    componente(P, _, _),
    \+ precisa(_, P).