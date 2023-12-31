open Couleur

type rubiksCube  = couleur list;;
let string_of_rubiksCube cube =
    let rec string_of_rubiksCube_Indexed couleurs  i  =  match couleurs with
| [] -> ""
| clr::clrb::clrc::clrd::r ->
    "(" ^ (string_of_int i) ^  "," ^ (string_of_couleur clr) ^ ")  " ^ 
    "(" ^ (string_of_int (i + 1)) ^  "," ^ (string_of_couleur clrb) ^ ")  " ^ 
    "(" ^ (string_of_int (i + 2)) ^  "," ^ (string_of_couleur clrc) ^ ")  " ^ 
    "(" ^ (string_of_int (i + 3)) ^  "," ^ (string_of_couleur clrd) ^ ")  " ^ "\n" ^ 
               string_of_rubiksCube_Indexed r (i + 4)
| _::_  -> "" 
in 
    string_of_rubiksCube_Indexed cube 0;;


let rubiksCubeFini = Gris::Gris::Gris::Gris::
Rouge::Rouge::Rouge::Rouge::
Bleu::Bleu::Bleu::Bleu::
Vert::Vert::Vert::Vert::
Jaune::Jaune::Jaune::Jaune::
Orange::Orange::Orange::Orange::[];;




let rec rubiksCubeSolved rubiks = match rubiks with
| [] -> true
| aclr::bclr::cclr::dclr::r -> (aclr = bclr && bclr = cclr && cclr = dclr) && rubiksCubeSolved r
| _ -> false
    