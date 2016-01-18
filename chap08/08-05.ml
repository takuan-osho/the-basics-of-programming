(* 漢字の駅名、ひらがなの駅名、ローマ字の駅名、その駅が所属する路線名をフィールドに持つレコード型 *)
type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}
