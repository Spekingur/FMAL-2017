/*removeElement(_,[],[]).
removeElement(X,[X|L1],L2) :- removeElement(X,L1,L2).
removeElement(_,[H|L1],[L1|L2]) :- removeElement(_,L1,L2).*/

/*removeElement(X,[_|L1],L2) :- removeElement(X,L1,L2).*/
/*removeElement(X,[H|L1],[H|L2]) :- removeElement(X,L1,L2).*/

removeElement(X,[X],[]).
/*removeElement(X,[X|T],L) :- removeElement(X,T,L).*/

/*removeElement(X,[_|T],L) :- removeElement(X,T,L).*/
