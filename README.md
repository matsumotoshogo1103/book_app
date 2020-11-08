# 📗 アプリ名

### Book Forest



# 📗 概要

![Book Forest](https://i.gyazo.com/e21943071b8c5df9228ec28e297e40ef.jpg)



<h4>読んだ本を投稿し管理できる本の管理ツールでありながら、
その本棚をシェアできる「本のSNS」です。<br>
このアプリの最大のポイントは本のSNSでありながら
本ではなく「人」が主体である点です。<br>
下記で順番に解説します。</h4>



## 1.ユーザーが一覧で表示される
![トップページ](https://i.gyazo.com/e372beb0b35019651108b449d7295111.png)



<h4>トップページで一覧表示されるのは投稿された本ではなく、
アカウント登録をしたユーザーです。<br>
ユーザーの年齢や職種、性別が記載されており
気になった人の本棚を覗きに行きます。</h4>



## 2.ユーザーページにて投稿された本を確認できる
![ユーザーページ](https://i.gyazo.com/6d1617a910cd056874b33cf1a5c89b67.png)



<h4>気になるユーザーのページに訪れると、
そのユーザーが投稿した本を一覧で見ることができます。
本をクリックすると本の詳細ページに飛ぶことができます。<br>
また、マイページの場合のみ本の投稿ボタンとユーザー情報編集ボタンが表示され、
本の投稿とユーザー情報の編集が可能です。</h4>



# 📗 本番環境


🌐 https://book-forest-app.herokuapp.com/



✅ テストアカウント
- Email: test@co.jp
- password: 123abc



# 📗 制作背景

<h4>社会人になって「本くらい読まないとなあ」と言いつつ、どんな本を読んだら良いのかわからない。<br>
そんな悩みを抱えている方は少なくないと思います。僕もそうでした。<br>
同じ悩みを抱えていた僕が本を読み始めたきっかけは「人」です。<br>
ここでいう「人」とは、好きな芸能人や応援しているスポーツ選手、尊敬している経営者などを指します。<br>
こういった「人」が読んでいる本って読んでみたくなりませんか？<br>
どうやってマインドを鍛えているのだろうとか、どんな本から影響を受けたのだろうとか。<br>
更に言うと、同じ世代の「人」や同じ職種の「人」がどんな本を読んでいるのかも気になります。<br>
同じじゃなくても良いです。同じ職種の違う世代の「人」でも良いです。人の本棚を覗けたら面白そうだなと思いました。<br>
そこで作ったのがこのアプリです。自分が読んだ本を管理できるツールでありながら、本棚をシェアできる本のSNSです。<br>
ただし、あくまでも主体は本ではなく「人」です。</h4>



# 📗 開発環境

## サーバーサイド

Ruby, Ruby on Rails


## フロントエンド

HTML, CSS, JavaScript


## データベース

MySQL


## インフラ

AWS(S3)


## サーバー

Heroku


## ソース管理

GitHub, GitHubDesktop

## タスク管理

Trello


## テスト

RSpec

## エディタ

VScode



# 📗 テーブル設計

## usersテーブル

| Column    | Type    | Option      |
|-----------|---------|-------------|
| nickname  | string  | null: false |
| email     | string  | null: false |
| password  | string  | null: false |
| age       | integer | null: false |
| job_id    | integer | null: false |
| gender_id | integer | null: false |
| introduce | text    | null: false |

### アソシエーション

has_many :books

## booksテーブル

| Column   | Type       | Option                        |
|----------|------------|-------------------------------|
| title    | string     | null: false                   |
| genre_id | integer    | null: false                   |
| autor    | string     | null: false                   |
| price    | integer    | null: false                   |
| text     | text       | null: false                   |
| user_id  | references | null: false, foreign_key: true|

### アソシエーション

belongs_to :user
