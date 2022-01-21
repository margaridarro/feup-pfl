/*1, 2, 3, 4.a, b, d, e, i
5.a, d, e, h
6.a, b, e, g
*/

%1
/* 
1a)
    x=1;
    x=2;

    no
1b)
    x=1;
    y=1;

    x=1;
    y=2;

    x=2;
    y=1;

    x=2;
    y=2;

    no
1c)
    x=1;
    y=1;

    x=1;
    y=2;

% não refaz o x, porque o cut bloqueia o primeiro valor correto
% cut no final bloqueia tudo o que está antes

*/

%2
/*
2a) fail provoca backtracking (dá sempre no, true dá sempre yes)
    one
    two
    three
    `five´
2b)
    one
2c)
    x=one
    y=one
    x-y=one-one

    x=one
    y=two
    x-y=one-two

    x=one
    y=three
    x-y=one-three

    apenas avançava para baixo se o x e o y falhassem
*/

%3
/*
      3a) Red
3b,c,d,e) Green
*/

%4
%4a
print_n(S,0).
print_n(S, N):-
    N>0,
        write(S),
        N1 is N-1,
        print_n(S, N1).

%4b
print_text(Text, Symbol, Padding):- 
    write(Symbol),
    print_n('-', Padding),
    write(Text),
    print_n('-', Padding),
    write(Symbol).
    
    
%4c
print_banner(Text, Symbol, Padding):-
    atom_length(Text, Length),
    Line is Length + Padding + Padding + 2,
    print_n(Symbol, Line),
    nl,
    print_text(Text, Symbol, Padding),
    nl, 
    print_n(Symbol, Line).

%4d
read_number(X):-
    read_num(X,0).

read_num(X,X):- 
    peek_code(10), !, skip_line.
read_num(X,T):- 
        get_code(D),
        char_code('0', Z),
        Num is D-Z,
        Num >= 0, Num =< 9, !, 
        Next is T*10+Num,
        read_num(X, Next).
read_num(X,T):-read_num(X, T).

    
% 5 a d e h TODO

