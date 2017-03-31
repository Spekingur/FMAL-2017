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
removeElement(X,[X],[]).
/* 2c insertElementAt(elem,L1,pos,L2) */
insertElementAt(X,[ ],1,[X]).
/* 2d segment(X,Y) */
/* 2e addUpList(L1,L2) */
addUpList([],[]).
addUpList([X],[X]).
/* 3a mymerge(X,Y,Z) */
mymerge([], [], []).
mymerge(X, [], X).
mymerge([], X, X).
mymerge([HX|X], [HY|Y], [HX|Z]):- HX < HY, mymerge(X, [HY|Y], Z).
mymerge([HX|X], [HY|Y], [HY|Z]) :- HX >= HY, mymerge([HX|X], Y, Z).
/* 3b mysplit(L1,L2,L3) */
/* 3c mysort(L1,L2) */
/* 4a binaryTree(T) */
binaryTree(nil).
binaryTree(t(_,LeftT,RightT)) :- binaryTree(LeftT), binaryTree(RightT).
/* 4b preorder(T, Lis) */
preorder(nil,[]).
preorder(t(X,LeftT,RightT),[X|Lis]):-    preorder(LeftT,LeftLis),   										
					 preorder(RightT,RightLis),   
					 append(LeftLis,RightLis,Lis).
/* 4c leaves(T, Lis) */
/* 5 */
