numElements(0,[]).
numElements(M,[_|L]) :- numElements(K,L), M is K+1.