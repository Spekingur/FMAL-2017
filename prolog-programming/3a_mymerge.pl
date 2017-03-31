mymerge([], [], []).
mymerge(X, [], X).
mymerge([], X, X).
mymerge([HX|X], [HY|Y], [HX|Z]):- HX < HY, mymerge(X, [HY|Y], Z).
mymerge([HX|X], [HY|Y], [HY|Z]) :- HX >= HY, mymerge([HX|X], Y, Z).