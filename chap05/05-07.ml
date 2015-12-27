(* 目的: 身長(m)と体重(kg)を受け取り、BMI指数を返す *)
(* float -> float -> float *)
let bmi height weight = weight /. (height *. height)

(* テスト *)
let test1 = bmi 1.5 45.0 = 20.0
let test2 = bmi 2.0 40.0 = 10.0
let test3 = bmi 2.0 80.0 = 20.0

(* 目的: 身長(m)と体重(kg)を受け取り、BMIに応じた体系を返す *)
(* float -> float -> string *)
let taikei height weight =
  if bmi height weight >= 30.0 then "高度肥満"
    else if bmi height weight >= 25.0 && bmi height weight < 30.0 then "肥満"
    else if bmi height weight >= 18.5 && bmi height weight < 25.0 then "標準"
    else "やせ"

(* テスト *)
let test1 = taikei 1.5 350.0 = "高度肥満"
let test2 = taikei 1.5 67.0 = "肥満"
let test3 = taikei 1.5 56.0 = "標準"
let test4 = taikei 1.5 30.0 = "やせ"
