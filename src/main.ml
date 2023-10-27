open RubiksCube
open Operation

let cube = rubiksCubeFini;;


let nexRtn = mouvements (Front, AntiHoraire)

let rotateCube = rotate cube nexRtn;;

print_endline (string_of_rubiksCube rotateCube);;

