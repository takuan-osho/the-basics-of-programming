(* 一羽辺りの鶴の足の数 *)
let num_of_tsuru_legs = 2

(* 目的: 鶴の数に応じて足の数の合計を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi num = num_of_tsuru_legs * num

(* 一匹当たりの亀の足の数 *)
let num_of_kame_legs = 4

(* 目的: 亀の数に応じて足の数の合計を返す *)
(* kame_no_ashi : int -> int *)
let kame_no_ashi num = num_of_kame_legs * num

(* 目的: 鶴と亀の数の合計と足の数の合計を与えられたら、鶴の数を返す *)
(* tsurukame : int -> int -> int *)
let tsurukame tsuru_kame_num num_of_all_legs = ((kame_no_ashi tsuru_kame_num) - num_of_all_legs) / (num_of_kame_legs - num_of_tsuru_legs)

(* テスト *)
let test1 = tsurukame 1 2 = 1
let test2 = tsurukame 1 4 = 0
let test3 = tsurukame 3 10 = 1
let test4 = tsurukame 3 8 = 2
let test5 = tsurukame 10 40 = 0
