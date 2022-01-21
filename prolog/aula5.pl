%1a
double(X, Y):- Y is X*2. 

map(_, [], []).
map(Pred, [H|T], [H1|T1]):-
    G =..[Pred, H, H1],
    G,
    map(Pred, T, T1).


%1b
sum(A, B, S):- S is A+B.

fold(_, StartValue, [], StartValue).
fold(Pred, StartValue, [H|T], FinalValue):-
    G =..[Pred, StartValue, H, NewStartValue],
    G,
    fold(Pred, NewStartValue, T, FinalValue).

/*
    3a) associativo à direita

    3b) associativo à esquerda
        é impossível.

Impossível:
      na
     /  \
    la   c
   /  \   
  a    c   

Impossível:
     la
   /    \
 a       na
        /  \
        b   c 
*/
/*
%4a

              as
        de          pelas
    aula   pfl  segundas   11
      |
      t


            as
        e       pelas
                /   \
    aula aula   4   pelas
      \    \        /  \
       11   12   cinco pelas
                        / \
                       6  sete

*/