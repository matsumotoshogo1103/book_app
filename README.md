# 📗 アプリ名

Book Forest

# 📗 概要

![Book Forest](https://i.gyazo.com/e21943071b8c5df9228ec28e297e40ef.jpg)

読んだ本を投稿し管理できる本の管理ツールでありながら、
その本棚をシェアできる「本のSNS」です。<br>
このアプリの最大のポイントは本のSNSでありながら
本ではなく「人」が主体である点です。<br>
下記で順番に解説します。

## 1.ユーザーが一覧で表示される
![トップページ](https://i.gyazo.com/e372beb0b35019651108b449d7295111.png)

トップページで一覧表示されるのは投稿された本ではなく、
アカウント登録をしたユーザーです。<br>
ユーザーの年齢や職種、性別が記載されており
気になった人の本棚を覗きに行きます。

## 2.ユーザーページにて投稿された本を確認できる
![ユーザーページ](https://i.gyazo.com/6d1617a910cd056874b33cf1a5c89b67.png)

気になるユーザーのページに訪れると、
そのユーザーが投稿した本を一覧で見ることができます。
本をクリックすると本の詳細ページに飛ぶことができます。<br>
また、マイページの場合のみ本の投稿ボタンとユーザー情報編集ボタンが表示され、
本の投稿とユーザー情報の編集が可能です。



# 📗 本番環境

🌐 https://book-forest-app.herokuapp.com/

✅ テストアカウント
- Email: test@co.jp
- password: 123abc

# 📗 制作背景

# 📗 開発環境

# テーブル設計

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
