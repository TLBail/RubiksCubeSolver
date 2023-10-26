open RubiksCube
type rotation = (int * int * int * int) * (int * int * int * int* int * int * int * int)

type sens = Horaire | AntiHoraire;;
type face = Front | Back | Top | Bottom | Right | Left;;
type mouvement = face * sens;;


val mouvements : mouvement -> rotation;;

val rotate : rubiksCube -> rotation -> rubiksCube

val swap : 'a list -> int -> int -> 'a list;;