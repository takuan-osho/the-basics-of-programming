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

(* テスト *)
let kame1 = kame_no_ashi 1 = 4
let kame2 = kame_no_ashi 3 = 12
let kame3 = kame_no_ashi 10 = 40

(* 目的: 鶴の数と亀の数に応じて足の数の合計を返す *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi tsuru_num kame_num = tsuru_no_ashi tsuru_num + kame_no_ashi kame_num

(* テスト *)
let test1 = tsurukame_no_ashi 1 1 = 6
let test2 = tsurukame_no_ashi 1 2 = 10
let test3 = tsurukame_no_ashi 2 1 = 8
