open RubiksCube
open Operation

let cube = rubiksCubeFini;;

let rtn = (0::1::20::21::0::1::
[], 16::17::8::9::20::21::
[]);;

let rotateCube = rotate cube rtn;;

print_endline (string_of_rubiksCube rotateCube);;


let swapedCube = swap cube 0 23;;
print_endline (string_of_rubiksCube swapedCube);;




