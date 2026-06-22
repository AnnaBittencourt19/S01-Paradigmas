hangar(hangar_alpha).
hangar(hangar_beta).
componente(canhao, combate, 4).
componente(blindagem, combate, 3).
componente(motor, propulsao, 8).
possui(hangar_alpha, canhao).
possui(hangar_alpha, blindagem).
possui(hangar_beta, canhao).
possui(hangar_beta, motor).
hangar_combate(H) :-
    possui(H, P1),
    possui(H, P2),
    P1 \= P2,
    P1 @< P2,
    componente(P1, combate, _),
    componente(P2, combate, _).
falta_energia(H) :-
    hangar(H),
    \+ (
        possui(H, P),
        componente(P, propulsao, _)
    ).