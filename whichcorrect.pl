solution([A1,A2,A3,A4,A5,A6]) :-
        sat(A1 =:= A2*A3*A4*A5*A6),
        sat(A2 =:= ~(A3+A4+A5+A6)),
        sat(A3 =:= A1*A2),
        sat(A4 =:= A1+A2+A3),
        sat(A5 =:= ~(A1+A2+A3+A4)),
        sat(A6 =:= ~(A1+A2+A3+A4+A5)).
