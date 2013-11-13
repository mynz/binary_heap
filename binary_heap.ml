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
let h = Br (7, Null, Null)


let rec print_heap = function
    Null -> "[null]"
    | Lf v -> ("[" ^ (string_of_int v) ^ "]")
    | Br (v, l, r) -> ("[br: L: " ^ (string_of_int v) ^ (print_heap l) ^ ", R: " ^ (print_heap r)  ^ "]");;


print_string (print_heap h);;



let up h v = 
    Br (v, Null, Null) ;;








