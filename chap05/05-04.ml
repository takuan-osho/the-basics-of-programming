(* 目的: 2時方程式ax**2 + bx + c = 0 の係数を受け取ったら判別式の値を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c

(* テスト *)
let test1 = hanbetsushiki 1.0 10.0 3.0 = 88.0
let test2 = hanbetsushiki 10.0 10.0 1.0 = 60.0
let test3 = hanbetsushiki 1.0 4.0 3.0 = 4.0
