open RubiksCube
open Operation

let cube = rubiksCubeFini;;

(*
let rtnHorizontalTop = (0::1::20::21::0::1::
[], 16::17::8::9::20::21::
[]);;

let rthHorizontalBottom = (3::2::23::22::3::2::
[], 19::18::11::10::23::22::
[]);;
*)
let rtn = (0::1::2::3::[], 7::6::8::11::13::12::18::17::[]);;

let rtnHorizontalTop = (4::5::6::7::[], 
0::1::8::9::20::21::16::17::[]);;

let rotateCube = rotate cube rtnHorizontalTop;;

print_endline (string_of_rubiksCube rotateCube);;


let swapedCube = swap cube 0 23;;
print_endline (string_of_rubiksCube swapedCube);;




