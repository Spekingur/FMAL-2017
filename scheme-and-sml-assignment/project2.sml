(* 3a *)
fun zip([]) ([]) = []
| zip(a::x) ([]) = []
| zip([]) (b::y) = []
| zip(a::x) (b::y) = (a,b)::zip(x) (y);

(* 3b *)
fun greaterThan ([]) (k) = []
|   greaterThan (x::xt)(k) =
    if (x<=k) then greaterThan(xt)(k)
    else x::greaterThan(xt)(k);

(* 3c *)
fun reduction (f) ([]) = []
| reduction (f) (a::y) = a (f y);

(* 3d *)

(* 4a *)
fun insert(x, ([])) = []
|	insert(x:real, (a::y)) =
	 if(x > a) then a::insert(x, y)
	 else x::(a::y);

(* 4b *)

(* 4c *)

(* 4d *)

(* 4e *)
