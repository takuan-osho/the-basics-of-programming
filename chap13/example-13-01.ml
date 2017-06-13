(* 学生ひとり分のデータ(名前、点数、成績)を表す型 *)
type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

(* 目的: 学生リスト lst のうち成績が A の人の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst = match lst with
  | [] -> 0
  | {namae = n; tensuu = t; seiseki = s} :: rest
    -> if s = "A" then 1 + count_A rest
                  else count_A rest


(* 目的: 学生リスト lst のうち成績が seiseki0 の人の数を返す *)
(* count : gakusei_t list -> string -> int *)
let rec count lst seiseki0 = match lst with
  | [] -> 0
  | {namae = n; tensuu = t; seiseki = s} :: rest
    -> if s = seiseki0 then 1 + count rest seiseki0
                       else count rest seiseki0
