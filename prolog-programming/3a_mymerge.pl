mymerge([], [], []).
mymerge(X, [], X).
mymerge([], X, X).
mymerge([HX|X], [HY|Y], [HX,HY|Z]) :- !, mymerge(X, Y, Z).