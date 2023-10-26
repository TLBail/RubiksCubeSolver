type rotation = (int * int * int * int) * (int * int * int * int* int * int * int * int)

type sens = Horaire | AntiHoraire;;
type face = Front | Back | Top | Bottom | Right | Left;;
type mouvement = face * sens;;


let mouvements mv = match mv with 
  |(Top, AntiHoraire) ->  ((7,6,5,4),(16,17,20,21,8,9,0,1))
  |(Top, Horaire) ->  ((4,5,6,7),(1,0,9,8,21,20,17,16))
  |(Front, Horaire) ->  ((0,1,2,3), (7,6,8,11,13,12,18,17))
  |(Front, AntiHoraire) ->  ((3,2,1,0), (18, 17, 12,13, 11, 8, 6, 7))
  | _ -> raise Not_found;;

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