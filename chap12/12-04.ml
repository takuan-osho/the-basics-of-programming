(* 漢字の駅名、ひらがなの駅名、ローマ字の駅名、その駅が所属する路線名をフィールドに持つレコード型 *)
type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}

let ekimei_list = [
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"};
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"};
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"};
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"};
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"};
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"}
]

(* 目的：昇順に並んでいる lst の正しい位置に ekimei を挿入する *)
(* ekimei_insert : ekimei_t list -> ekimei_t -> ekimei_t list *)
let rec ekimei_insert lst ekimei0 = match lst with
  | [] -> [ekimei0]
  | ({kanji=k; kana=kn; romaji=r; shozoku=s} as ekimei) :: rest ->
    match ekimei0 with {kanji=k0; kana=kn0; romaji=r0; shozoku=s0} ->
      if kn = kn0 then ekimei_insert rest ekimei0
      else if kn < kn0 then ekimei :: ekimei_insert rest ekimei0
      else ekimei0 :: lst

(* テスト *)
let test1 = ekimei_insert [] {kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}
	    = [{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}]
let test2 = ekimei_insert [
	{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"};
	{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"};
	{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"};
	{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"};
	{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}
	]
	{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}
= [
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"};
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"};
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"};
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"};
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"};
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}
]

(* 目的 : ekimei_t 型のリストを受け取り、ひらがなの順に整列して駅の重複を取り除いたekimei_t 型のリストを返す *)
(* seiretsu : ekimei_t list -> ekimei_t list *)
let rec seiretsu ekimei_list = match ekimei_list with
  | [] -> []
  | first :: rest -> ekimei_insert (seiretsu rest) first

(* テスト *)
let test3 = seiretsu [] = []
let test4 = seiretsu ekimei_list = [
    {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"};
    {kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"};
    {kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"};
    {kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"};
    {kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"};
    {kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}
  ]
