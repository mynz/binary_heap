let h = [ 1; 2; 3];;
let a = Array.of_list h;;

let print_list l =
    let s =  String.concat ", " (List.map string_of_int l)
    in print_string ("[" ^ s ^ "]");;

let to_array = Array.of_list;;
let to_list = Array.to_list;;

print_list h;;


