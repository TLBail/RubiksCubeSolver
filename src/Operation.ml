type rotation  = (int list) * (int list);;
let swap lst i j = 
  let rec aux acc k = function
    | [] -> List.rev acc
    | _ :: xs when k = i -> aux (List.nth lst j :: acc ) (k + 1) xs
    | _ :: xs when k = j -> aux (List.nth lst i :: acc ) (k + 1) xs
    | x :: xs -> aux (x :: acc) ( k + 1 ) xs
in 
aux [] 0 lst;;

let rotate cube (rtFace, rtCorner) = let cubeFace = match rtFace with
| [] -> cube
| a::b::c::d::[] ->
  let rt1 = swap cube a d in
  let rt2 = swap rt1 d c in
  swap rt2 c b
| _::_ -> cube in
match rtCorner with
| [] -> cubeFace
| aa::ab::ba::bb::ca::cb::da::db::[] -> 
  let rt1 = swap cubeFace aa ba in
  let rt2 = swap rt1 ab bb in 

  let rt3 = swap rt2 ca da in
  let rt4 = swap rt3 cb db in

  let rt5 = swap rt4 aa ca in
  swap rt5 ab cb
| _ :: _ -> cubeFace;;
  