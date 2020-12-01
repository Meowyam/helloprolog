sea([N, M, L, R, I]) :-
  sat(M =< N),
  sat(L =< R),
  sat(I =< ~R),
  sat(N =< L).

implication_chain([], Prev) --> [Prev].
implication_chain(Vs0, Prev) --> [Prev],
        { select(V, Vs0, Vs) },
        (   { taut(Prev =< V, 1) } -> implication_chain(Vs, V)
        ;   { taut(Prev =< ~V, 1) } -> implication_chain(Vs, ~V)
        ).

