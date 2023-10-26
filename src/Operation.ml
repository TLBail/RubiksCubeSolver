type rotation  = (int list) * (int list);;
let swap lst i j = 
  let rec aux acc k = function
    | [] -> List.rev acc
    | _ :: xs when k = i -> aux (List.nth lst j :: acc ) (k + 1) xs
    | _ :: xs when k = j -> aux (List.nth lst i :: acc ) (k + 1) xs
    | x :: xs -> aux (x :: acc) ( k + 1 ) xs
in 
aux [] 0 lst;;


let rec rotate cube rt = match rt with
| ([], []) -> cube
| (a::r, b::s) -> rotate (swap cube a b) (r, s)
| (_, _) -> cube

