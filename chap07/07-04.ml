(* 目的: x, y座標の組となっている平面座標をふたつ受け取って、その中点を返す *)
(* chuten : int * int -> int * int -> int * int *)
let chuten cooridinate1 cooridinate2 = match cooridinate1 with
  (x1, y1) ->
  (match cooridinate2 with
    (x2, y2) -> ((x1 + x2) / 2, (y1 + y2) / 2))

(* テスト *)
let test1 = chuten (0, 0) (2, 2) = (1, 1)
