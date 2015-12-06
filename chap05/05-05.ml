(* 目的: 2時方程式ax**2 + bx + c = 0 の係数を受け取ったら判別式の値を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c

(* 目的: 2次方程式ax**2 + bx + c = 0 の係数を受け取ったら、解の個数を返す *)
(* kai_no_kosuu : float -> float -> float -> float *)
let kai_no_kosuu a b c =
  if hanbetsushiki a b c > 0.0 then 2.0
    else if hanbetsushiki a b c = 0.0 then 1.0
    else 0.0


(* テスト *)
let test1 = kai_no_kosuu 1.0 4.0 3.0 = 2.0
let test2 = kai_no_kosuu 1.0 4.0 4.0 = 1.0
let test3 = kai_no_kosuu 1.0 4.0 5.0 = 0.0
