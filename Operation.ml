type rotation = (int * int * int * int) * (int * int * int * int* int * int * int * int)

type sens = Horaire | AntiHoraire;;
type face = Front | Back | Top | Bottom | Right | Left;;
type mouvement = face * sens;;

let string_of_mouvement (aface, asens) = let start = match aface with 
  | Front -> "Front "
  | Back -> "Back "
  | Top -> "Top "
  | Bottom -> "Bottom "
  | Right -> "Right "
  | Left -> "Left " in
  start ^ match asens with
  | Horaire -> " Horaire"
  | AntiHoraire -> " AntiHoraire"



let mouvements mv = match mv with 
  | (Top, AntiHoraire) ->  ((7,6,5,4),(16,17,0,1,8,9,20,21))
  | (Top, Horaire) ->  ((4,5,6,7),(21,20,9,8,1,0,17,16))
  | (Front, Horaire) ->  ((0,1,2,3), (7,6,8,11,13,12,18,17))
  | (Front, AntiHoraire) ->  ((3,2,1,0), (17, 18, 12,13, 11, 8, 6, 7))
  | (Bottom, Horaire) -> ((12, 13, 14, 15),(3,2,11,10,23,22,19,18))
  | (Bottom, AntiHoraire) -> ((15, 14, 13, 12),(18,19,22,23,10,11,2,3))
  | (Left, Horaire) -> ((16, 17, 18, 19), (4, 7, 0, 3, 15, 12, 22, 21))
  | (Left, AntiHoraire) -> ((19, 18, 17, 16), (21, 22, 15, 12, 3, 0, 7, 4))
  | (Right, Horaire) -> ((8, 9, 10, 11),(6, 5, 20, 23, 14, 13, 2, 1))
  | (Right, AntiHoraire) -> ((11, 10, 9, 8),(1, 2, 13, 14, 23, 20, 5, 6))
  | (Back, Horaire) -> ((20, 21, 22, 23), (5, 4, 16, 19, 15, 14, 10, 9))
  | (Back, AntiHoraire) -> ((23, 22, 21, 20), (9, 10, 14, 15, 19, 16, 4, 5));;

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