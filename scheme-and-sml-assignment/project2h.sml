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
fun reduction f ([]) = 0.0
| reduction f ([a]) = a
| reduction f (a::y) = f(a, reduction f(y));

fun reduction f (x) =
    if null(x) then 0
    else if null(tl(x)) then hd(x)
    else f(hd(x), reduction f(tl(x)));

(* 3d *)
(*fun partition f ([]) = []
| partition f (lis::y) = 
    let
        val lis1
        val lis2: lis2::m
    in
        (lis1, lis2)
    end

fun test2 [] = []
| test2 (a::y) = [a];*)

(*if (f lis) then let lis1 = lis 
else let lis2 = lis;
else (lis1,lis)::partition f(y);*)
(*if (f(lis)) then lis::partition f(y);*)

(* 4a *)

(* 4b *)

(* 4c *)

(* 4d *)

(* 4e *)