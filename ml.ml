type op = Plus | Minus | Times | Divide
type aexp = Num of float | BinOp of aexp * op * aexp

let rec evalAExp exp =
  match exp with
    Num(x) -> x
  | BinOp(left, op, right) ->
      match op with
        Plus -> (evalAExp left) +. (evalAExp right)
      | Minus ->  (evalAExp left) -. (evalAExp right)
      | Times -> (evalAExp left) *. (evalAExp right)
      | Divide -> (evalAExp left) /. (evalAExp right)

let rec dec2bin (n: int) : int list =
    match n with
        0 -> [0]
        | 1 -> [1]
        | _ -> (dec2bin (n / 2))@[n mod 2] ;;