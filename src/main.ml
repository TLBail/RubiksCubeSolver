open RubiksCube
open Operation

let cube = rubiksCubeFini;;

let rtn = ((0,1,2,3), (7,6,8,11,13,12,18,17));;

let rtnHorizontalTop = ((4,5,6,7),(0,1,8,9,20,21,16,17));;

let rotateCube = rotate cube rtn;;

print_endline (string_of_rubiksCube rotateCube);;


let swapedCube = swap cube 0 23;;
print_endline (string_of_rubiksCube swapedCube);;




