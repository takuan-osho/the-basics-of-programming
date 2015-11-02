(* 一羽辺りの鶴の足の数 *)
let num_of_tsuru_legs = 2

(* 目的: 鶴の数に応じて足の数の合計を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi num = num_of_tsuru_legs * num

(* テスト *)
let test1 = tsuru_no_ashi 1 = 2
let test2 = tsuru_no_ashi 3 = 6
let test3 = tsuru_no_ashi 10 = 20
