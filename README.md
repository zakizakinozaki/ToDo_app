# アプリ名
Study Helper

# 概要
プログラミング学習者向けのTrelloの様なタスク管理アプリと学んだ事をアウトプットする機能、学習でつまづいているわからない事などを質問投稿できて他ユーザーは質問に対してコメントで解答ができる、質問投稿機能を作成

# 本番環境
https://task-helper-34440.herokuapp.com/

ログイン情報（テスト用）

メールアドレス：test@test

パスワード：1a1a1a

# 制作背景
プログラミングスクールでプログラミングをチームで学習してアウトプットなどする中でQiitaの様にアウトプット投稿してその投稿をいつでも確認できたり、学習中に詰まっている事や悩んでいる事を学習している仲間に共有して解決ができたら、受講生間の一体感も強くなり他の受講生の疑問に答える事でプログラミングの理解度もより深まると思いプログラミング学習で役に立つツールを合わせて一つのアプリケーションとして作成しました。

# 機能
・今のところタスクのリストとタスクの詳細などを記入できるタスクカードを追加できます

今後追加する機能

・アウトプット作成投稿機能

・質問作成投稿機能

・質問に対してのコメント機能

・タスク管理のドラッグアンドドロップ

# 使用技術
Ruby/Ruby on Rails

HTML・SCSS

GitHub・GitHubDesktop

VSCode

# ER図
![image](https://user-images.githubusercontent.com/78135984/112461778-9ee62280-8da3-11eb-83f3-08e9a5368777.png)


# DB設計

## usersテーブル

| Column             | Type       | Option                    |
| ------------------ | ---------- | ------------------------- |
| nickname           | string     | null :false               |
| email              | string     | null :false, unique: true |
| encrypted_password | string     | null :false               |

### Association

- has_many :outputs
- has_many :questions
- has_many :comments
- has_many :lists

## listsテーブル

| Column             | Type       | Option                    |
| ------------------ | ---------- | ------------------------- |
| program            | string     | null :false               |
| user_id           | references | foreign_key :true         |

### Association

- has_many :cards
- belongs_to :user

## cardsテーブル

| Column             | Type       | Option                    |
| ------------------ | ---------- | ------------------------- |
| task               | string     | null :false               |
| memo               | text       |                           |
| list_id            | references | foreign_key :true         |

### Association

- belongs_to :list

## outputsテーブル

| Column             | Type       | Option                    |
| ------------------ | ---------- | ------------------------- |
| heading            | text       | null :false               |
| description        | text       | null :false               |
| user_id            | references | foreign_key :true         |

### Association

- belongs_to :user

## questionsテーブル

| Column             | Type       | Option                    |
| ------------------ | ---------- | ------------------------- |
| title              | text       | null :false               |
| quest              | text       | null :false, unique: true |
| user_id            | references | foreign_key :true         |

### Association

- has_many :comments
- belongs_to :user

## commentsテーブル

| Column             | Type       | Option                    |
| ------------------ | ---------- | ------------------------- |
| text               | text       | null :false               |
| user_id            | references | foreign_key :true         |
| question_id        | references | foreign_key :true         |

### Association

- belongs_to :user
- belongs_to :question