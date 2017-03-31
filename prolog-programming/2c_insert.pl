insertElementAt(X,[ ],1,[X]).
/*insertElementAt(X,_,1,[X|_]).*/
/*insertElementAt(X,L1,K,[X|L2]) :- K>1, K1 is K-1, insertElementAt(X,L1,K1,L2).
insertElementAt(X,[H|L1],K,[H|L2]) :- insertElementAt(X,L1,K,L2).*/
/*insertElementAt(X,[H|L1],N,[H|L2]) :- insertElementAt(X,L1,N1,L2), N is N1-1, N1>1.*/

/*insertElement(X,L,[X|L]).
insertElement(X,[H|T],[H|T2]) :− insertElement(X,T,T2).*/

/*elementAt(X,[X|_],1).
elementAt(X,[_|T],K) :− K>1, K1 is K−1, elementAt(X,T,K1).*/

/*insertElementAt(elem,L1,pos,L2)
List L2 is obtained by inserting element elem into list L1 at position pos.
?- insertElementAt(a,[b,c,d],1,[a,b,c,d]).
true
insertElementAt(c,[a,b,d],3,X).
X = [a, b, c, d]*/