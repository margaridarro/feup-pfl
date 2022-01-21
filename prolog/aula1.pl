% 1a)
male(phil).
male(frank).
male(jay).
male(mitchell).
male(joe).
male(javier).
male(merle).
male(bo).
male(calhoun).
male(luke).
male(george).
male(manny).
male(cameron).
male(dylan).
male(rexford).

female(grace).
female(dede).
female(claire).
female(gloria).
female(barb).
female(pameron).
female(haley).
female(alex).
female(lily).

parent(phil,luke).
parent(claire,luke).
parent(phil,haley).
parent(claire,haley).
parent(phil,alex).
parent(claire,alex).

parent(frank,phil).
parent(grace,phil).

parent(dede,claire).
parent(dede,mitchell).
parent(jay,claire).
parent(jay,mitchell).

parent(jay,joe).
parent(gloria,joe).

parent(gloria,manny).
parent(javier,manny).

parent(barb,cameron).
parent(barb,pameron).
parent(merle,cameron).
parent(merle,pameron).

parent(pameron,calhoun).
parent(bo,calhoun).

parent(mitchell,lily).
parent(cameron,lily).
parent(mitchell,rexford).
parent(camreon,rexford).

parent(dylan,george).
parent(dylan,poppy).
parent(haley,george).
parent(haley,poppy).


% 1b)
/*
parent(X,_Y), parent(_Y,luke) %luke's grandparents

i.      female(haley).
ii.     male(gil).
iii.    parent(frank,phil).
iv.     parent(X, claire).
v.      parent(gloria, X).
vi.     parent(jay,_Y), parent(_Y,X).
vii.    parent(X,_Y), parent(_Y,lily).
viii.   parent(alex,X).
ix.     parent(jay,X), \+ parent(gloria, X).
*/

% 1c)
father(X, _Y) :- parent(X, _Y), male(X).
grandparent(X, _Z) :- parent(X,_Y), parent(_Y,_Z).
grandmother(X, _Z) :- parent(X,_Y), parent(_Y,_Z), female(X).
siblings(X,Y) :- parent(A, X), parent(A, Y), parent(B, X), parent(B, Y).
halfsiblings(X,Y):- parent(A, X), parent(A, Y), parent(B, X), \+ parent(B, Y).
cousins(X,Y):- grandparent(_Z, X),grandparent(_Z, Y), \+ siblings(X,Y).

% shift+insert = colar
% ctrl+insert = colar

% trace,
% notrace,
% N S Call Depth Port

/*---------------------------------------------------------------*/

% 6
pairs(X,Y):- d(X), q(Y).
pairs(X, X):- u(X).
u(1).
d(2).
d(4).
q(4).
q(16).

%7
a(a1, 1).
a(A2, 2).
a(a3, N).
b(1, b1).
b(2, B2).
b(N, b3).
c(X, Y):- a(X, Z), b(Z, Y).
d(X, Y):- a(X, Z), b(Y, Z).
d(X, Y):- a(Z, X), b(Z, Y).

%b
/*
i.      a(A,2). = yes
*/
