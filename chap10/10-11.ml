#use "../chap09/09-09.ml"

(* 目的 : 漢字の駅名を2つと駅間リストを受け取ったら、その2駅間の距離を返す *)
(* get_ekikan_kyori : str -> str -> ekikan_t list -> float *)
let rec get_ekikan_kyori eki1 eki2 ekikan_list = match (eki1, eki2, ekikan_list) with
  | ("", "", []) -> infinity
  | ("", eki2, []) -> infinity
  | (eki1, "", []) -> infinity
  | (eki1, eki2, []) -> infinity
  | ("", "", ekikan_list) -> infinity
  | ("", eki2, ekikan_list) -> infinity
  | (eki1, "", ekikan_list) -> infinity
  | (eki1, eki2, {kiten=kiten; shuten=shuten; keiyu=keiyu; kyori=kyori; jikan=jikan} :: rest) ->
    if (eki1 = kiten && eki2 = shuten) || (eki1 = shuten && eki2 = kiten)
    then kyori
    else get_ekikan_kyori eki1 eki2 rest

(* テスト *)
let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
let test2 = get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_list = infinity
let test3 = get_ekikan_kyori "東京" "大手町" global_ekikan_list = 0.6
