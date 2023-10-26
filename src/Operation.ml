type rotation = (int * int * int * int) * (int * int * int * int* int * int * int * int)

let swap lst i j =
  let rec aux acc k = function
    | [] -> List.rev acc
    | _ :: xs when k = i || k = j ->
      let y = if k = i then List.nth lst j else List.nth lst i in
      aux (y :: acc) (k + 1) xs
    | x :: xs -> aux (x :: acc) (k + 1) xs
  in
  aux [] 0 lst

let rotate cube (face, corners) =
  let swap_faces cube (a, b, c, d) =
      let rt1 = swap cube a d in
      let rt2 = swap rt1 d c in
      swap rt2 c b
  in
  let swap_corners cube (aa, ab, ba, bb, ca, cb, da, db) =
      let rt1 = swap cube aa ba in
      let rt2 = swap rt1 ab bb in
      let rt3 = swap rt2 ca da in
      let rt4 = swap rt3 cb db in
      let rt5 = swap rt4 aa ca in
      swap rt5 ab cb
  in
  swap_corners (swap_faces cube face) corners