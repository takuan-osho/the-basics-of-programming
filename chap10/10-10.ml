(* 目的 : ローマ字の駅名と駅名リストを受け取り、その駅の漢字表示を文字列で返す *)
(* romaji_to_kanji : string -> ekimei_t list -> string *)

#use "../chap09/09-09.ml"

let rec romaji_to_kanji ekimei lst = match lst with
  | [] -> ""
  | {kanji=kanji; kana=kana; romaji=romaji; shozoku=shozoku} :: rest ->
    if ekimei = romaji then kanji else romaji_to_kanji ekimei rest

let test1 = romaji_to_kanji "yoyogiuehara" global_ekimei_list = "代々木上原"
let test2 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
let test3 = romaji_to_kanji "sonnamonnai" global_ekimei_list = ""
