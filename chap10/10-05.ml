(* 学生ひとり分のデータ(名前、点数、成績)を表す型 *)
type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

let gakusei1 = {namae="nakamura"; tensuu=90; seiseki="A"}
let gakusei2 = {namae="miyahara"; tensuu=80; seiseki="A"}
let gakusei3 = {namae="sato"; tensuu=75; seiseki="B"}
let gakusei4 = {namae="idehara"; tensuu=70; seiseki="B"}
let gakusei5 = {namae="tsubata"; tensuu=65; seiseki="C"}
let gakusei6 = {namae="asai"; tensuu=60; seiseki="C"}

(* 目的: 受け取った gakusei_t list の中から最高得点を取った人のレコードを返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
| [] -> {namae=""; tensuu=min_int; seiseki=""}
| ({namae = n; tensuu = t; seiseki = s} as gakusei) :: rest ->
    match gakusei_max rest with
    | {namae = n_max; tensuu = t_max; seiseki = s_max} ->
      if t_max < t
        then gakusei
        else gakusei_max rest

(* テスト *)
let test1 = gakusei_max [gakusei1] = gakusei1
let test2 = gakusei_max [gakusei1; gakusei2] = gakusei1
let test3 = gakusei_max [gakusei1; gakusei2; gakusei3] = gakusei1
let test4 = gakusei_max [gakusei1; gakusei2; gakusei3; gakusei4] = gakusei1
let test5 = gakusei_max [gakusei1; gakusei2; gakusei3; gakusei4; gakusei5] = gakusei1
let test6 = gakusei_max [gakusei1; gakusei2; gakusei3; gakusei4; gakusei5; gakusei6] = gakusei1
