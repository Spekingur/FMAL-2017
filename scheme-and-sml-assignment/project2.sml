fun zip(x::xt)(y::yt) =
	let
       val (M,N) = zip(xt)(yt)
	in
       (x::M, y::N)
	end;
 
 fun zip(x::xt)(y::yt) = [(x,y)];


fun greaterThan ([]) (k) = []
|   greaterThan (x::xt)(k) =
    if (x<=k) then greaterThan(xt)(k)
    else x::greaterThan(xt)(k);