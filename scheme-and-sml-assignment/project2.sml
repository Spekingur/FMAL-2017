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

(* 3d *)

(* 4a *)

(* 4b *)

(* 4c *)

(* 4d *)

(* 4e *)