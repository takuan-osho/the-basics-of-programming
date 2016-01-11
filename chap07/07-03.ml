(* 目的: x, y座標の組となっている平面座標を受け取ったら、x軸について対象名点の座標を返す *)
(* taisho_x : int * int -> int * int *)
let taisho_x cooridinate = match cooridinate with
  (x, y) -> (-x, y)

(* テスト *)
let test1 = taisho_x (1, 1) = (-1, 1)
let test2 = taisho_x (-1, 1) = (1, 1)
let test3 = taisho_x (1, -1) = (-1, -1)
let test4 = taisho_x (-1, -1) = (1, -1)
