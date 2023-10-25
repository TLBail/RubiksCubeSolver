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


let rubiksCubeFini = (0, Gris)::(1, Gris)::(2, Gris)::(3, Gris)::
(4, Rouge)::(5,Rouge)::(6, Rouge)::(7,Rouge)::
(8, Bleu)::(9, Bleu)::(10, Bleu)::(11, Bleu)::
(16, Jaune)::(17, Jaune)::(18, Jaune)::(19, Jaune)::
(20, Orange)::(21, Orange)::(22, Orange)::(23, Orange)::[];;


(* Todo : 
val randomcube = unit -> rubiksCube;; la fonction doit prendre le cube fini est faire genre 20 opération 
de manière random pour être sur qu'il est finisable
*)