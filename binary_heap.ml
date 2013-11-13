let l = [ 1; 2; 3];;
let a = Array.of_list l;;

let print_list l =
    let s =  String.concat ", " (List.map string_of_int l)
    in print_string ("[" ^ s ^ "]");;

let to_array = Array.of_list;;
let to_list = Array.to_list;;

(* print_list l;; *)
(* ---- *)

type heap = Null | Lf of int | Br of int * heap * heap;;

(* let h = Null;; *)
(* let h = Br (7, Null, Null) *)
let h = Br (1,
                (Br (3, (Lf 7), Null)),
                Null);;

let rec string_of_heap = function
      Null -> "Null"
    | Lf v -> string_of_int v
    | Br (v, l, r) -> let ls = string_of_heap l and rs = string_of_heap r
        in ("[br(" ^ (string_of_int v) ^ "): L: " ^ ls ^ ", R: " ^ rs  ^ "]");;

let print_heap h = print_string ((string_of_heap h) ^ "\n");;
           
print_heap h;;

let buble_up h v = 
    Br (v, h, Null) ;;


print_heap (buble_up h 777);;


