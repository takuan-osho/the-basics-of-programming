(* 漢字の駅名、ひらがなの駅名、ローマ字の駅名、その駅が所属する路線名をフィールドに持つレコード型 *)
type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}

(* 目的: ekimei_t 型のデータを受け取り、"路線名、駅名(かな)"の形式の文字列を返す *)
(* hyoji : ekimei -> string *)
let hyoji ekimei = match ekimei with
  {kanji = kanji; kana = kana;
  romaji = romaji; shozoku = shozoku} ->
    shozoku ^ "、" ^ kanji ^ "(" ^ kana ^ ")"

(* テスト *)
let test1 = hyoji {
  kanji = "茗荷谷"; kana = "みょうがだに";
  romaji = "myogadani"; shozoku = "丸ノ内線"
} = "丸ノ内線、茗荷谷(みょうがだに)"
let test2 = hyoji {
  kanji = "鷺沼"; kana = "さぎぬま";
  romaji = "saginuma"; shozoku = "田園都市線"
} = "田園都市線、鷺沼(さぎぬま)"
let test3 = hyoji {
  kanji = "池尻大橋"; kana = "いけじりおおはし";
  romaji = "ikejirioohashi"; shozoku = "田園都市線"
} = "田園都市線、池尻大橋(いけじりおおはし)"
