homme(pierre).
homme(marc).
homme(paul).
femme(marie).
femme(sophie).

parent(pierre, paul).
parent(marie, paul).
parent(marc, sophie).

pčre(X, Y) :- homme(X), parent(X, Y).
mčre(X, Y) :- femme(X), parent(X, Y).

