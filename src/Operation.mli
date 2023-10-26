open RubiksCube
type rotation = (int * int * int * int) * (int * int * int * int* int * int * int * int)

val rotate : rubiksCube -> rotation -> rubiksCube

val swap : 'a list -> int -> int -> 'a list;;