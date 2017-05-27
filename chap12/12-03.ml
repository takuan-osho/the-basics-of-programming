(* 漢字の駅名、ひらがなの駅名、ローマ字の駅名、その駅が所属する路線名をフィールドに持つレコード型 *)
type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}

type eki_t = {
  namae : string;
  saitan_kyori : float;
  temae_list : string list;
}

(* 目的 : ekimei_t 型のリストを受け取り、eki_t 型のリストを返す *)
(* make_eki_list : ekimei_t list -> eki_t list *)
let rec make_eki_list lst = match lst with
  | [] -> []
  | {kanji=kanji; kana=kana; romaji=romaji; shozoku=shozoku} :: rest
    -> {namae=kanji; saitan_kyori=infinity; temae_list = []} :: make_eki_list rest

let eki_list = [
  {namae="池袋"; saitan_kyori = infinity; temae_list = []};
  {namae="新大塚"; saitan_kyori = infinity; temae_list = []};
  {namae="茗荷谷"; saitan_kyori = infinity; temae_list = []};
  {namae="後楽園"; saitan_kyori = infinity; temae_list = []};
  {namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []};
  {namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []}
]

(* eki_t 型のリストと起点を受け取り、eki_t 型のリストを返す *)
(* shokika : eki_t list string -> eki_t list *)
let rec shokika eki_list kiten = match eki_list with
  | [] -> []
  | ({namae=namae; saitan_kyori=saitan_kyori; temae_list=temae_list} as first):: rest
    -> if namae = kiten then {namae=namae; saitan_kyori=0.; temae_list=[namae]} :: shokika rest kiten
                        else first :: shokika rest kiten

(* テスト *)
let test1 = shokika [] "茗荷谷" = []
let test2 = shokika eki_list "茗荷谷" = [
    {namae="池袋"; saitan_kyori = infinity; temae_list = []};
    {namae="新大塚"; saitan_kyori = infinity; temae_list = []};
    {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]};
    {namae="後楽園"; saitan_kyori = infinity; temae_list = []};
    {namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []};
    {namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []}
  ]
