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
fun reduction f ([]) = []
| reduction f (a::y) = if (a = y) then a else f (a, reduction (f) (y));

(*if a = y then a::y
                         else reduction (f) (y);

fun reduction f (a) = a
| reduction f (a::y) = f(a, reduction f(y));

fun reduction f ([]) = nil
| reduction f (a::y) = f(a, reduction f(y));

fun reduction f (a::y) =
    if(a+1=nil) then a else f(a, reduction f(y));
|

fun reduction f (a::y) =
    if()

fun reduction f ([]) = 0
| reduction f ([a]) = a
| reduction f (a::y) = f(a, reduction f(y));

fun reduction f ([]) = []
| reduction f (a::y) =
    if (length a = 1)
    then a
    else f(a, reduction f(y));

fun reduction f lis

(* 3d *)
fun partition f ([]) = []
| partition f (lis::y) = 
    let
        val lis1
        val lis2: lis2::m
    in
        (lis1, lis2)
    end

fun test [] = []
| test (a::y) = y;

(*if (f lis) then let lis1 = lis 
else let lis2 = lis;
else (lis1,lis)::partition f(y);*)
(*if (f(lis)) then lis::partition f(y);*)

(* 4a *)

(* 4b *)

(* 4c *)

(* 4d *)

(* 4e *)