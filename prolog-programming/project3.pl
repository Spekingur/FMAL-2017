/* 1a */
affair(steve,jane).
affair(steve,mary).
married(tom,jane).
rich(steve).
greedy(john).
hatred(X,Y) :- affair(X,Z), married(Y,Z).
greed(X) :- greedy(X), not(rich(X)).
suspect(X) :- hatred(_,X).
suspect(X) :- greed(X).
/* 1b */
/* The suspects are Tom and John. */
/* 1c */
/* There are plenty of single facts to choose from. The text says that Mary is having an affair so the most obvious question would be is if Mary is married to John. */
/* Note that this, as plenty of british crime dramas tell us, does not however really disprove that Tom could have killed Steve, it's just that now John has more motives. */
married(john,mary).
primarysuspect(X) :- hatred(_,X), greed(X).
/* 2a numElements(K,L) */
numElements(0,[]).
numElements(M,[_|L]) :- numElements(K,L), M is K+1.
/* 2b removeElement(X,L1,L2) */
/* 2c insertElementAt(elem,L1,pos,L2) */
/* 2d segment(X,Y) */
/* 2e addUpList(L1,L2) */
/* 3a mymerge(X,Y,Z) */
/* 3b mysplit(L1,L2,L3) */
/* 3c mysort(L1,L2) */
/* 4a binaryTree(T) */
/* 4b preorder(T, Lis) */
/* 4c leaves(T, Lis) */
/* 5 */