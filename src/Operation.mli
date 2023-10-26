open RubiksCube
type rotation  = (int list) * (int list);;

val rotate : rubiksCube -> rotation -> rubiksCube

val swap : 'a list -> int -> int -> 'a list;;