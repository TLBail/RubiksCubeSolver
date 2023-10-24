open Couleur

type rubiksCube  = (int * couleur) list;;
let rec string_of_rubiksCube = function 
| [] -> ""
| (a, clr)::r ->  "(" ^ (string_of_int a) ^  "," ^ (string_of_couleur clr) ^ ")  " ^ 
               string_of_rubiksCube r ;;


(* Todo : 
val randomcube = unit -> rubiksCube;; 
*)