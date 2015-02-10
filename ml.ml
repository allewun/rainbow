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