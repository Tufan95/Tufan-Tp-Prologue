homme(pierre).
homme(marc).
homme(paul).
femme(marie).
femme(sophie).

parent(pierre, paul).
parent(marie, paul).
parent(marc, sophie).

p�re(X, Y) :- homme(X), parent(X, Y).
m�re(X, Y) :- femme(X), parent(X, Y).

