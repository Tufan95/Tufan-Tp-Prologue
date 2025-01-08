homme(pierre).
homme(marc).
homme(paul).
femme(marie).
femme(sophie).

parent(pierre, paul).
parent(marie, paul).
parent(marc, sophie).

père(X, Y) :- homme(X), parent(X, Y).
mère(X, Y) :- femme(X), parent(X, Y).

