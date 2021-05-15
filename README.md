# Restaurant Talks

ホテルの料飲部（主にホール）の業務改善を目的としたアプリです。<br>
ホールとキッチンのコミュニケーションを改善することを主目的としています。<br>
現場での利用を想定し、レスポンシブ対応やタップで使いやすいデザインに力を入れました。

## URL
### https://restaurant-talks.com/
ログイン画面からゲストログインできます。

<img width="800" alt="ログイン画面" src="https://user-images.githubusercontent.com/66105826/117378321-1fa24d80-af10-11eb-9dac-7415d9a35ab2.png">


## 使用技術一覧

#### フロントエンド
  + HTML/CSS
  + JavaScript
  + bootstrap (4.1.3)

#### バックエンド
  + Ruby (3.0.0)
  + Ruby on Rails (6.1.3)
  + MySQL (8.0)
  + RSpec
  + Rubocop (0.36.0)

#### インフラ　その他
  + AWS (EC2/S3/RDS/VPC/IAM/ALB/ACM/Route53/Cloudfront)
  + Nginx/puma (3.12.6)
  + Capistrano (3.16.0)
  + Git/GitHub
  + VScode
  + Docker
  + Circle CI

## ER図
<img width="649" alt="ER図４" src="https://user-images.githubusercontent.com/66105826/117236903-b0bbea80-ae64-11eb-84bd-e8c5203da9ac.png">

## インフラ構成図
<img width="800" alt="インフラ構成図" src="https://user-images.githubusercontent.com/66105826/117227014-dfc86100-ae50-11eb-9bf4-51c86bb69754.png">


## 開発背景
1. ホールとキッチン間でのコミュニケーション不足からストレスがあったこと
    + 例えば、ホール側は、前菜やサラダなど何がいくつ用意されているかわかりません。そのため、忙しい時に口頭で確認し合わないといけないということが発生し、お互いにストレスになっていました。
    + この問題を解決するために、在庫を管理するシステムがあればいいのではないかと考えました。

2. 毎日同じ時間にキッチンに報告することはチャットで報告し、全員が見れるようにしたらいいのではないかと考えたこと
    + 部署間での報告後にキッチン内での引き継ぎもれが多々あり、チャットで可視化できたらいいのではと考えました。
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
	+ 業務改善アプリということがあり、toC向けのアプリに比べ初めて使う人が使い方を理解しやすい作りにすることに苦労しました。
+ 自分の前職だけでなく、他の場所でも使えるようにすること　→　スケールできるようにすること
	+ 当初入れる予定で考えていた機能であまりに使用条件が限定的な機能は外し、シンプルさを心がけました。
+ 実際の現場でスマホやタブレットを使い、スピーディに使えるアプリを目指すこと
	+ レスポンシブ対応を徹底しました。
  + 数を編集することがメイン機能なので、一覧画面から詳細画面ではなく編集画面に飛べるようにすること、登録ボタンを複数設置することでUXを高めました。

## 機能一覧(使い方の詳細は一覧の下に記述しています。)

+ 料理や飲み物等のアイテムの数を管理する機能
+ キッチンとホール間でのチャット機能
+ チャットの非同期通信機能
+ カテゴリーソート機能
+ 常連のお客様をデータベース管理する機能
+ ホール内での引き継ぎ事項を管理する機能
+ 残りの朝食人数を共有する機能
+ ページネーション機能(kaminari)
+ 画像アップロード機能(active storage)
+ ユーザー管理機能(devise)
+ 発注リスト機能
+ ユーザー管理機能


## アプリの機能の詳細、使用方法
### 在庫管理機能
  + 料理その他の在庫を管理するメインの機能です。<br>

<img width="800" alt="フード" src="https://user-images.githubusercontent.com/66105826/118343388-acc65180-b563-11eb-8199-b6b9888c6bc7.png">

  + 料理の在庫管理<br>
		1. キッチンが料理を仕込んだり作ったりした際に、作った数を登録する。<br>
		2. 登録された料理を提供する際に、提供する数を登録する。<br>
		3. 少なくなった料理はキッチンへの発注リストに載るので、キッチンはそれを見て作る。<br><br>
  + 飲み物、備品の在庫管理<br>
		1. 飲み物、備品を納品したら数を登録する。<br>
		2. 使ったら数を登録していく。<br>
		3. 少なくなるとホールの発注リストに載るので、リストを見て業者に発注をかける。<br>
### 人数管理機能<br>
  1. 朝食営業時に残りの朝食人数を随時登録し、キッチンと共有します。<br>
  2. 時間ごとにどのポジションに何人いるか登録し、キッチンとホールが助け合い、オペレーションを円滑にすることにつなげます。
### チャット機能
  + リアルタイムで素早くチャットするというよりも、報告事項をメールよりも手軽に共有できたり、確認事項を確認することを目的とした機能です。
  + 無線を使った突発的なお互いの都合を無視したコミュニケーションを減らし、お互いに時間がある時にメッセージのやりとりをすることで、効率を改善します。

  <img width="800" alt="チャット" src="https://user-images.githubusercontent.com/66105826/118343383-a33ce980-b563-11eb-8e6a-b77f3b783744.png">

### 引き継ぎ帳機能
  + 毎日次の日に向けてホール内で引き継ぎを書く機能です。
  + その日の注意事項、早番への引き継ぎ事項、遅番への引き継ぎ事項、次の日への引き継ぎ事項を書きます。
  + 紙媒体で日々の引き継ぎを行なっているので、デジタル化できないかと考えました。
### 発注リスト機能
  + キッチンへの発注リストでは、提供して足りなくなった料理等がこのリストに載るので、キッチンがリストを確認し作ることができます。
  + ホールへの発注リストでは、足りなくなった飲み物等が載るので、確認し必要数を業者へ発注することができます。
  	+ 現状では、ホール内でいくつ飲み物等を使った、どれだけ業者に発注する、ということの確認作業が大きな手間になり、時間的コストをとっていたので、在庫が少なくなったらリストに表示されるようにすることで効率を改善します。 
  + 今後業者への発注機能をつけて、リストだけてなく発注もできるようにすることが課題です。
### 常連ゲスト管理機能
  + 常連ゲストの名前、会員ステータス（ゴールド、プラチナなど）、会員番号をデータベース管理します。
  + データベース化しておくことで毎回ゲストに確認しなくても良くなり、ゲストサービスの向上につなげます。

## 今後の改良計画
+ Vue.jsでの部分SPA化
+ 発注リストから実際に発注できる機能をつける
+ 天気の表示機能
+ テストの充実化
+ コードの共通化
+ 運営側のページの作成
+ 運営企業への問い合わせページなどの実装
