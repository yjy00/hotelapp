# Restaurant Talks

+ 前職である、ホテルの料飲部の業務改善を目的としたアプリです。
+ ホールとキッチンのコミュニケーションを改善することを主目的としています。
+ ホールとキッチンの間や、スタッフの間で口頭伝達だったり正確に把握できていないものを管理します。

## URL
### [Restaurant Talks](https://restaurant-talks.com/)<br>
ログイン画面からゲストログインできます。

## 使用技術一覧

+ フロントエンド
  + HTML/CSS
  + JavaScript
  + bootstrap(4.1.3)
  + vue.js

+ バックエンド
  + Ruby(3.0.0)
  + Ruby on Rails(6.1.3)
  + MySQL(8.0)
  + RSpec
  + Rubocop(0.36.0)

+ インフラ　その他
  + AWS(EC2/S3/RDS/VPC/IAM/ALB/ACM/Route53/Cloudfront)
  + Nginx/puma
  + Capistrano
  + Git/GitHub
  + VScode
  + Docker

## ER図
<img width="649" alt="ER図４" src="https://user-images.githubusercontent.com/66105826/117236903-b0bbea80-ae64-11eb-84bd-e8c5203da9ac.png">

## インフラ構成図
<img width="873" alt="インフラ構成図" src="https://user-images.githubusercontent.com/66105826/117227014-dfc86100-ae50-11eb-9bf4-51c86bb69754.png">


## 機能一覧

+ アイテムの数を管理する機能
+ ユーザー管理機能
+ キッチンとホール間でのチャット機能
+ チャットの非同期通信機能
+ 常連のお客様をデータベース管理する機能
+ 翌日への引き継ぎ事項を管理する機能
+ 残りの朝食人数を共有する機能
+ 発注リスト機能
+ ユーザー管理機能
+ ページネーション機能


## 今後の改良計画
+ Vue.jsでの部分SPA化
+ Circle CIの導入
