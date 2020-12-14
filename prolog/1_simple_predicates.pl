father(a,b).
father(a,c).
father(b,d).
father(b,e).
father(c,f).
brother(X,Y) :- father(Z,X),father(Z,Y).
cousin(X,Y):-brother(A,B),father(A,X),father(B,Y).
grandson(Y,X) :- father(X,A),father(A,Y).
descendent(X,Y):-father(Y,X);grandson(X,Y).
