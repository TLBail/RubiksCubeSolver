open RubiksCube
open Operation

type identifier = char


type piece = 
   { pid    : identifier
   ; x      : int
   ; y      : int
   ; width  : int
   ; height : int
   }

let piece a b c d e = 
  { pid = a ; x = b ; y = c ; width = d ; height = e } 



let xs = List.init 4 (fun x -> x) (*[0..3]*)


let ys = List.init 5 (fun x -> x) (*[0..4]*)

type 'a set = rubiksCube 

type k_state = { unState : piece set } 

let string_of_state { unState } = string_of_rubiksCube unState




let equal_state s1 s2 = s1 = s2



let anotherKlotski =
  { unState = Gris::Gris::Gris::Gris::
  Rouge::Rouge::Bleu::Bleu::
  Vert::Bleu::Bleu::Vert::
  Jaune::Jaune::Vert::Vert::
  Jaune::Rouge::Rouge::Jaune::
  Orange::Orange::Orange::Orange::[]}
  
let pennantKlotski = 
  { unState = rubiksCubeFini}
      
let pennantFinalPosition = rubiksCubeFini


let isSolved {unState} = rubiksCubeSolved unState


             
let string_of_move amove = string_of_mouvement amove;; 


module KlotskiProblem = 
  (StateProblem.StateProblem 
     (struct 
       type state = k_state 
       let string_of_state = string_of_state 
     end)
     (struct 
       type op = mouvement 
       let string_of_op = string_of_move 
     end)
     (Additive.IntC)
   )


let moves { unState } =
  let faces = [Front; Back; Top; Bottom; Right; Left] in
  let sens = [Horaire; AntiHoraire] in
  let mouvements_possibles = List.flatten (List.map (fun face -> List.map (fun s -> (face, s)) sens) faces) in
  List.map (fun (face, sens) ->
    let rotated_state = rotate unState (mouvements (face, sens)) in
    {
      KlotskiProblem.startState = { unState = unState };
      operation = (face, sens);
      KlotskiProblem.endState = { unState = rotated_state };
      cost = 1;
    }
  ) mouvements_possibles;;
let klotski_flag = 1
