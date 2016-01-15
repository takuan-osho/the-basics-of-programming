(* 本に関する情報を格納するレコード型 book_t を宣言 *)
(* フィールドは"タイトル", "著者名", "出版社", "値段", "ISBN" *)
type book_t = {
  title : string;
  author : string;
  publisher : string;
  price : int;
  isbn : string
}

let book1 = {
  title = "マディソン郡の橋"; author = "R・J・ウォラー";
  publisher = "文藝春秋"; price = 524; isbn = "4-16-725423-9"}
let book2 = {
  title = "オブジェクト指向JavaScriptの原則"; author = "Nicholas C. Zakas";
  publisher = "オライリー・ジャパン"; price = 2400; isbn = "978-4-87311-681-5";}
let book3 = {
  title = "すごいHaskellたのしく学ぼう"; author = "Miran Lipovača";
  publisher = "オーム社"; price = 2800; isbn = "978-4-274-06885-0";}
