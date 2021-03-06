# README

# 社会課題解決アプリ「せんす」

## 概要
いま日本が抱えている社会課題や、ありたい日本のみらいビジョンを自由に提案し、  
その達成のためにできる方法を考え、各ユーザーの強みを結集させながら社会課題を解決していく。    

## コンセプト
政治でも、一企業の利益のためでもなく、  
一般市民の力の結集によって、「日本のいま」を「素敵なみらい」に変えていくアプリ   

## バージョン
Ruby 2.6.5
Rails 5.2.4.4

## 機能一覧
- [ ] 社会的課題の投稿・編集・削除・詳細機能

- [ ] geocoder(gem)を使い、投稿された社会的課題の地図表示機能  

- [ ] 「ありたい未来」案の投稿・編集・削除・詳細機能  

- [ ] 投稿された「ありたい未来」についてのコメント機能    

- [ ] geocoder(gem)を使い、投稿された「ありたい未来」の地図表示機能   

- [ ] ユーザー登録・編集・詳細機能  

- [ ] 「ちから＝”せんすの骨”」登録・編集・詳細機能   

- [ ] 「せんすの”要”」投稿・編集・削除・詳細機能  

- [ ] アイディア（”要”）を実現するためのちから（"せんすの骨"）登録・編集・削除・詳細機能  

- [ ] メッセージ機能

- [ ] 「社会的課題」と「せんす」の紐付け

- [ ] 「ありたい未来」と「せんす」の紐付け  

- [ ] 「せんすの要」と「ちから」の紐付け   

- [ ] 投稿された社会的課題への賛同とランキング表示  

- [ ] 投稿された社会的課題の検索機能  

- [ ] 投稿された「ありたい未来」への賛同とランキング表示    

- [ ] 投稿された「ありたい未来」の検索機能  

- [ ] 投稿された「ちから」の検索機能

- [ ] 投稿された「せんす」の検索機能

- [ ] 管理者権限機能

- [ ] オンライン教育機能  

- [ ] ちから交換機能

＊就業タームから「コメント機能」「メッセージ機能」の二つを実装し、カリキュラム外のgemであるgeocoderを実装する


## カタログ設計
https://docs.google.com/spreadsheets/d/1_rSNAwUHlp-zXMYQf6IfuMc_LXPK4a942PwtmEJn0tU/edit#gid=0

## テーブル定義
https://docs.google.com/spreadsheets/d/1_rSNAwUHlp-zXMYQf6IfuMc_LXPK4a942PwtmEJn0tU/edit#gid=777410998

## ER図
https://docs.google.com/spreadsheets/d/1_rSNAwUHlp-zXMYQf6IfuMc_LXPK4a942PwtmEJn0tU/edit#gid=1819190621

## 画面遷移図
https://docs.google.com/spreadsheets/d/1_rSNAwUHlp-zXMYQf6IfuMc_LXPK4a942PwtmEJn0tU/edit#gid=1335658528

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1_rSNAwUHlp-zXMYQf6IfuMc_LXPK4a942PwtmEJn0tU/edit#gid=1466215404

## 使用予定Gem
* carrierwave
* mini_magick
* geocoder
