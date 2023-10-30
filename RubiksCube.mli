open Couleur
type rubiksCube  = couleur list;;

val string_of_rubiksCube : rubiksCube -> string

val rubiksCubeFini : rubiksCube

val rubiksCubeSolved : rubiksCube -> bool