father(X, Y)
mother(X, Y)
male(X)
female(X)
parent(X, Y)
diff(X, Y)

is_mother(X) :-
  female(X), mother(X, Y).

is_father(X) :-
  male(X), father(X, Y).

is_son(X, Y) :-
  male(X), parent(Y, X).

sibling(X, Y) :-
  parent(P, X), parent(P, Y), diff(X, Y).

sister_of(X, Y) :-
  female(X), sibling(X, Y). 

grandpa_of(X, Y) :-
  father(X, Z), father(Z, Y), male(X).
