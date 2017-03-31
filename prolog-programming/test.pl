/*testaffair(steve,mary).
testaffair(steve,jane).
testmarried(tom,jane).
rich(steve).
greedy(john).
testhatred(X,Z) :- testaffair(X,Y),testmarried(Z,Y).
testgreed(X) :- greedy(X), not(rich(X)).
testsuspects(X) :- testhatred(_,X).
testsuspects(X) :- testgreed(X).*/

/*numElement(K,L).*/
numElement(0,[]).
numElement(M,[_|L]) :- numElement(K,L), M is K+1.