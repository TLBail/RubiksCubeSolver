open Couleur

type rubiksCube  = (int * couleur) list;;
let rec string_of_rubiksCube = function 
| [] -> ""
| (a, clr)::(b,clrb)::(c, clrc)::(d,clrd)::r ->
    "(" ^ (string_of_int a) ^  "," ^ (string_of_couleur clr) ^ ")  " ^ 
    "(" ^ (string_of_int b) ^  "," ^ (string_of_couleur clrb) ^ ")  " ^ 
    "(" ^ (string_of_int c) ^  "," ^ (string_of_couleur clrc) ^ ")  " ^ 
    "(" ^ (string_of_int d) ^  "," ^ (string_of_couleur clrd) ^ ")  " ^ "\n" ^ 
               string_of_rubiksCube r
| (_, _)::_  -> "" ;;


let rubiksCubeFini = (1, Rouge)::(2,Rouge)::(3, Rouge)::(4,Rouge)::
(1, Vert)::(2, Vert)::(3, Vert)::(4, Vert)::
(1, Orange)::(2, Orange)::(3, Orange)::(4, Orange)::
(1, Jaune)::(2, Jaune)::(3, Jaune)::(4, Jaune)::
(1, Violet)::(2, Violet)::(3, Violet)::(4, Violet)::
(1, Bleu)::(2, Bleu)::(3, Bleu)::(4, Bleu)::[];;


(* Todo : 
val randomcube = unit -> rubiksCube;; 
*)