/* 1c, 1d, 2, 3, 4, 5d, 5e, 6b, 6c, 6d, 6e, 7, 8b, 8c, 9, 11 */
% 1c
fib(0,0).
fib(1,1).
fib(N, Sum):- 
    N>1,
        N1 is N-1,
        N2 is N-2,
        fib(N1, Sum1),
        fib(N2, Sum2),
        Sum is Sum1 + Sum2.

% 1d
/*
ismod(X, Y) :- 0 is X mod Y, !.
ismod(X, Y) :- X > Y + 1,
                ismod(X, Y+1).

isPrime(2).
isPrime(N):- N>2,
                not(ismod(X, 2)).
*/

% 4
/*
    a)  yes
    b)  no
    c)  yes
    d)  H = pfl
        T = [lbaw, redes, ltw]
    e)  H = lbaw
        T = [ltw]
    f)  H = leic
        T = []
    g)  no
    h)  H = leic
        T = [[pfl, ltw, lbaw, redes]]
    i)  H = leic
        T = [Two]
    j)  Inst = gram
        LEIC = feup
    k)  One = 1
        Two = 2
        Tail = [3, 4]
    l)  One = leic
        Rest =  [Two | Tail]
*/

% 5d
inner_product([],[], 0).
inner_product(L1, L2, Res):- [X1|T1] = L1,
                             [X2|T2] = L2,
                             inner_product(T1, T2, Res1),
                             Res is (X1 * X2) + Res1.

% 5e
count(E, [], 0).
count(E, L, N):- [X | T] = [L],
                    count(E, T, N1),
                    ((E == X, N is N1+1) ; N is N1).
                    