let h = [ 1; 2; 3];;
let a = Array.of_list h;;

let print_list l =
    let s =  String.concat ", " (List.map string_of_int l)
    in print_string ("[" ^ s ^ "]");;

print_list h;;


(* let print_array a =  *)
    (* Array.map string_of_int a;; *)


(* Array.iter (fun a -> a) (Array.map string_of_int a);; *)


(* let sl = String.concat ", " (Array.map string_of_int a) *)
    (* in print_string sl;; *)

(* Array.iter print_int a;; *)

(* let s = List.fold_left (fun a b -> a ^ string_of_int b ^ ", ") "" h *)
    (* in print_string ("(" ^  s ^ ")");; *)

