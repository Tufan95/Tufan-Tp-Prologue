# Tufan-Tp-Prologue

Exercice n°1:

Ensuite, répondez aux questions suivantes :
1.	Qui est le père de Marc ?
    c'est jacques.
2.	Marc a-t-il des enfants ?
    oui, sophie.


Exercice n°2:

Posez les questions suivantes à Prolog :
1.	Qui est le grand-parent de Paul ?
    il n'a pas de grand-parent
  	pour cela on fait grandparent(X, paul).

3.	Jacques est-il grand-parent de Sophie ?
       oui
  	    grandparent(X, sophie).
  	    reponse Jacques

   Exercice n°3:

1.	Paul a-t-il des frères ou des sœurs ?

   Exercice n°4:
   1.	Trouvez tous les hommes dans la base de données :
          findall( X, homme(X), Liste).
     	cela donne:
     	Liste = [pierre, marc, paul, jacques].
     	

3.	Recherchez tous les parents de Sophie :
    findall(X, parent(X, sophie), Liste).
Liste = [marc].

   Exercice n°6:
   1.	Ajoutez une règle pour calculer la longueur d'une liste :
        longueur([], 0).
        longueur([_ | Queue], N) :- longueur(Queue, M), N is M + 1.

   Testez la règle en posant les requêtes suivantes :
   ?- longueur([pierre, marie, paul], N).
    N = 3.


  Exercice n°7:
  Ajoutez une règle pour vérifier si un élément est présent dans une liste :
  membre(X, [X|_]).
  membre(X, [_|T]) :- membre(X, T).

  Posez la question suivante pour trouver si Marie est présente dans la liste contenant pierre, marie et paul

  ?- membre(marie, [pierre, marie, paul]).
  true
  
  Exercice n°8:

  Créez une règle pour définir les oncles et tantes :

  oncle(X, Y) :- homme(X), parent(Z, Y), freresSoeurs(X, Z).
  tante(X, Y) :- femme(X), parent(Z, Y), freresSoeurs(X, Z).

  Posez les questions suivantes :
  1.	Marc est-il l'oncle de Paul ?
        ?- oncle(marc, paul).
        false.

  3.	Quels sont les oncles de Sophie ?
        ?- oncle(X, sophie).
        X = marc 

  Exercice n°9:
  



