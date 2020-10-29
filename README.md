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
