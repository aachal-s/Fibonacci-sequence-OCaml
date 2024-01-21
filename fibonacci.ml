let rec fibonacci n =
  match n with
  | 0 -> [0]
  | 1 -> [0; 1]
  | _ ->
    let fib_list = fibonacci (n - 1) in
    let next_number = List.hd (List.rev fib_list) + List.hd fib_list in
    fib_list @ [next_number]

let () =
  (* Generate and print Fibonacci sequence up to 10 elements *)
  let result = fibonacci 10 in
  Printf.printf "Fibonacci Sequence: %s\n" (String.concat "; " (List.map string_of_int result))
