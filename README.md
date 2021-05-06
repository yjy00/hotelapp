# Restaurant Talks

ホテルの料飲部のホール（前職）の業務改善を目的としたアプリです。<br>
ホールとキッチンのコミュニケーションを改善することを主目的としています。<br>
ホールとキッチンの間や、スタッフの間で口頭伝達等で正確に把握できていないものを管理します。

## URL
### https://restaurant-talks.com/
ログイン画面からゲストログインできます。

<img width="977" alt="ログイン画面" src="https://user-images.githubusercontent.com/66105826/117378321-1fa24d80-af10-11eb-9dac-7415d9a35ab2.png">


## 開発背景
1. ホールとキッチン間でのコミュニケーション不足からストレスがあったこと
    + 例えば、ホール側は、前菜やサラダなど何がいくつ用意されているかわかりません。そのため、忙しい時に口頭で確認し合わないといけないということが発生し、お互いにストレスになっていました。
    + この問題を解決するために、在庫を管理するシステムがあればいいのではないかと考えました。

2. 毎日同じ時間にキッチンに報告することはチャットで報告し、全員が見れるようにしたらいいのではないかと考えたこと
    + 部署間の報告後のキッチン内での引き継ぎもれがあり、チャットで可視化できたらいいのではと考えました。
    + 緊急ではなくても無線を使ってキッチンに来るように呼び出されるということがあり、この問題防ぐことができると考えました。
    + 緊急でないことはチャットで、時間がある時に連絡できればいいのではないかと考えました。

3. ホール内での紙ベースの引き継ぎ帳は、デジタル化できるのではないかと考えたこと
4. せっかくの常連ゲストにも、同じことを何度も聞いていること
    + 会員ステータスや会員番号など、データベースがあればいいのではないかと考えました。

5. 以上のような目的が達成されると、付随する効果として、以下の効果も期待できます。
    + 在庫の管理でロスの削減
    + ゲストサービスの向上

## 開発中意識したこと
+ 初めて使う人にも使いやすくすること
+ 自分の前職だけでなく、他の場所でも使えるようにすること　→　スケールできるようにすること
+ シンプルな作りにすること
+ 実際の現場でスマホやタブレットを使いスピーディに使えるアプリを目指し、構成やボタンデザインを工夫すること

## 機能一覧

+ 料理や飲み物等のアイテムの数を管理する機能
+ ユーザー管理機能
+ キッチンとホール間でのチャット機能
+ チャットの非同期通信機能
+ 常連のお客様をデータベース管理する機能
+ ホール内での引き継ぎ事項を管理する機能
+ 残りの朝食人数を共有する機能
+ 発注リスト機能
+ ユーザー管理機能
+ ページネーション機能


## アプリの機能の詳細、使用方法
### 在庫管理機能
  + 食べ物その他の在庫を管理するメインの機能です。<br>

<img width="1440" alt="フード一覧" src="https://user-images.githubusercontent.com/66105826/117378366-3779d180-af10-11eb-85fb-614cf8805041.png">

  + 食べ物<br>
		1. キッチンが料理を仕込んだり作ったりしたら、その数を登録する。<br>
		2. 登録された料理を提供する際に、数を登録する。<br>
		3. 少なくなった料理はキッチンへの発注リストに載るので、キッチンはそれを見て作る。<br><br>
  + 飲み物、備品<br>
		1. 飲み物を納品したら数を登録する。<br>
		2. 使ったら数を登録していく。<br>
		3. 少なくなるとホールの発注リストに載るので、リストみて業者に発注をかける。<br>
### 人数管理機能<br>
  1. 朝食営業時に残りの朝食人数を随時登録し、キッチンと共有します。<br>
  2. 時間ごとにどのポジションに何人いるか登録し、キッチンとホールが助け合い、オペレーションを円滑にすることにつなげます。
### チャット機能
  + リアルタイムで素早くチャットするというよりも、報告事項をメールよりも手軽に共有できたり、確認事項を確認することを目的とした機能です。
  + 無線を使った突発的なお互いの都合を無視したコミュニケーションを減らし、お互いに時間がある時にメッセージのやりとりをすることで、効率を改善します。

<img width="1440" alt="チャット画面" src="https://user-images.githubusercontent.com/66105826/117378415-52e4dc80-af10-11eb-8b95-29e3fbe467c7.png">

### 引き継ぎ帳機能
  + 毎日次の日に向けてホール内で引き継ぎを書く機能です。
  + その日の注意事項、早番、遅番、次の日への引き継ぎ事項を書きます。
  + 紙媒体で日々の引き継ぎを行なっているので、デジタル化できないかと考えました。
### 発注リスト機能
  + キッチンへの発注リストでは、提供して足りなくなったものがリストに載るので、キッチンがこのリストを確認し足りないものを作ることができます。
  + ホールへの発注リストでは、このリストに足りなくなった飲み物等が載るので、これを確認し必要数業者へ発注することができます。
  + 現状では、ホール内でいくつ飲み物等を使った、どれだけ業者に発注するという確認が大きな手間になり、時間的コストをとっていたので、在庫が少なくなったらリストに表示されるようにし効率を改善します。 
  + 今後実際に業者への発注機能をつけてリストだけてなく発注もできるようにすることが課題です。
### 常連ゲスト管理機能
  + 常連ゲストの会員ステータス（ゴールド、プラチナなど）、会員番号をデータベース化し、毎回ゲストに聞かなくてもいいようにします。
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
  + Circle CI

## ER図
<img width="649" alt="ER図４" src="https://user-images.githubusercontent.com/66105826/117236903-b0bbea80-ae64-11eb-84bd-e8c5203da9ac.png">

## インフラ構成図
<img width="873" alt="インフラ構成図" src="https://user-images.githubusercontent.com/66105826/117227014-dfc86100-ae50-11eb-9bf4-51c86bb69754.png">


## 今後の改良計画
+ Vue.jsでの部分SPA化
+ 発注リストから実際に発注する機能をつける
