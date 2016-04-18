(* 目的: 受け取った lst の中の最小値を返す *)
(* minimum : int list -> int *)
let rec minimum lst = match lst with
| [] -> max_int
| first :: rest ->
    let min_rest = minimum rest in
      if first <= min_rest
        then first
        else min_rest
