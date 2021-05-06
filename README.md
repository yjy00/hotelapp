# Restaurant Talks

+ 前職（ホテルの料飲部のホール）の業務改善を目的としたアプリです。
+ ホールとキッチンのコミュニケーションを改善することを主目的としています。
+ ホールとキッチンの間や、スタッフの間で口頭伝達だったり正確に把握できていないものを管理します。

## URL
### https://restaurant-talks.com/
ログイン画面からゲストログインできます。

## 開発背景
1. ホールとキッチン間でのコミュニケーション不足からストレスがあったこと
    * 例えば、ホール側は、前菜やサラダなど何がいくつ用意されているかわからない。そのため、忙しい時に口頭で確認し合わないといけないということが発生し、お互いにストレスになる。
    * そこで、在庫を管理するシステムがあればいいのにと思っていた。
    * ホール内でも、引き継ぎが行われないせいで発注に二度手間が発生していたため、管理できるものがあるといいと思っていた。

2. 毎日同じ時間にキッチンに報告することはチャットで報告し、全員が見れるようにしたらいいのではないか、と考えたこと
    * 部署間の報告後の引き継ぎもれがあった
    * チャットで可視化できたらいいのでは
    * 緊急ではなくてもインカムを使ってキッチンに来るように呼び出されるということも防げる
    * 緊急でないことはチャットで、時間がある時に連絡できればいいのではないかと考えた。

3. 紙ベースの引き継ぎ帳は、デジタル化できるのではないかと考えたこと

4. せっかくの常連ゲストにも、同じことを何度も聞いていること
    * 会員ステータスや、会員番号など
    * データベースがあればいいのでは？

5. 以上のような目的が達成されると、付随する効果として、以下の効果も期待できます。
    * 在庫の管理でロスの削減
    * ゲストサービスの向上


### ペルソナ
+ ホテルをはじめとする、飲食業で働く人。
+ 現場の若い20~30代。
+ ホテル等お洒落なものが好き。
+ 収入は高くない。
+ 日本に住んでいる。
+ 悩みは恋愛？


## 開発中意識したこと
+ 初めて使う人にも使いやすくするのはどうしたらいいか
+ 自分の前職だけでなく、他の場所でも使えるように　→　スケールできるように
+ シンプルな作りにした
+ 実際の現場でスマホやタブレットを使いスピーディに使えるアプリを目指し、構成やボタンデザインを工夫しました。


## アプリの機能の詳細、使用方法
### 在庫管理機能
  + 食べ物その他の在庫を管理するメインの機能です。
  + 食べ物<br>
		1. 仕込んだり作ったりしたら、そのアイテムと数を登録する。<br>
		2. 登録されたアイテムを提供する際に、数を登録する。<br>
		3. 少なくなったアイテムは発注リストに載るので、キッチンはそれをみて作る。<br>
  + 飲み物、備品<br>
		1. 飲み物を納品したら数を登録する。<br>
		2. 使ったら数を登録していく。<br>
		3. 少なくなると発注リストに載るので、リストみて発注をかける。<br>
### 人数管理機能<br>
  1. 朝食営業時に残りの朝食人数を随時登録し、キッチンと共有します。<br>
  2. 時間ごとにどのポジションに何人いるか登録し、キッチンとホールが助け合い、オペレーションを円滑にすることにつなげます。
### チャット機能
  + リアルタイムで素早くチャットするというよりも、報告事項をメールよりも手軽に共有できたり、確認事項を確認することを目的とした機能です。
  + インカムを使った突発的なお互いの都合を無視したコミュニケーションを減らし、お互いに時間がある時にメッセージのやりとりをすることで、効率を改善します。
  + また、言った言わない等の問題が発生するのを防ぎます。
### 引き継ぎ機能
  + 毎日次の日に向けて引き継ぎを書く機能です。
  + その日の注意事項、早番、遅番、次の日への引き継ぎ事項を書きます。
  + 紙媒体で日々の引き継ぎを行なっているので、デジタル化できないかと考えました。
### 発注リスト機能
  + アイテムをいくつ使った、どれだけ発注するという確認が大きな手間になり、時間的コストをとっていたので、在庫が少なくなったらリストに表示されるようにし効率を改善します。 
  + 今後実際に発注機能をつけてリストだけてなく発注もできるようにすることが課題です。
### 常連ゲスト管理機能
  + 常連ゲストの会員ステータス、会員番号をデータベース化し、毎回ゲストに聞かなくてもいいようにします。
  + 会員特典を何も言わずにつけておくことで、ゲストサービスの向上につなげます。
	
	
	
## 使用技術一覧

#### フロントエンド
  + HTML/CSS
  + JavaScript
  + bootstrap (4.1.3)
  + vue.js

#### バックエンド
  + Ruby (3.0.0)
  + Ruby on Rails (6.1.3)
  + MySQL (8.0)
  + RSpec
  + Rubocop (0.36.0)

#### インフラ　その他
  + AWS(EC2/S3/RDS/VPC/IAM/ALB/ACM/Route53/Cloudfront)
  + Nginx/puma (3.12.6)
  + Capistrano (3.16.0)
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
+ 発注リストから実際に発注する機能をつける
