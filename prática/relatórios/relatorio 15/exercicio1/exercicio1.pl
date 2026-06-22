componente(motor_principal, sistemas, 6).
componente(escudo, sistemas, 6).
componente(sensor, sistemas, 6).
precisa(escudo, motor_principal).
precisa(sensor, motor_principal).

peca_critica(P) :-
    componente(P, _, Energia),
    Energia > 5,
    precisa(P1, P),
    precisa(P2, P),
    P1 \= P2,
    P1 @< P2.