(* 目的: 5強化の点数を与えられたらその合計点と平均点を組にして返す *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> (float * float) *)
let goukei_to_heikin japanese math english science social =
  (japanese +. math +. english +. science +. social,
   (japanese +. math +. english +. science +. social) /. 5.0)

(* テスト *)
let test1 = goukei_to_heikin 1. 1. 1. 1. 1. = (5.0, 1.0)
let test2 = goukei_to_heikin 2. 2. 2. 2. 2. = (10.0, 2.0)
let test3 = goukei_to_heikin 4. 2. 4. 2. 3. = (15.0, 3.0)
