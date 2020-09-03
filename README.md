# アプリ概要
野球の成績を記録、管理するためのアプリです。

# table_setting

## users

### table

| column         | type   | option                    |
| -------------- | ------ | ------------------------- |
| name           | string | null: false               |
| email          | string | null: false, unique: true |
| password       | string | null: false               |

### association

- has_many :at_bats, dependent: :destroy
- has_many :games, dependent: :destroy

## at_bats

### table

| column         | type    | option                  |
| -------------- | ------- | ----------------------- |
| pitcher        | string  | null: false, default: 0 |
| position       | string  | null: false, default: 0 |
| result         | string  | null: false             |
| rbi            | integer | null: false, default: 0 |
| game_id        | integer | null: false             |
| user_id        | integer | null: false             |

### association

- belongs_to :user
- belongs_to :game

## games

### table

| column     | type    | option      |
| ---------- | ------- | ----------- |
| day        | string  | null: false |
| team       | string  | null: false |
| opponent   | string  |             |
| at_bat_id  | integer | null: false |
| user_id    | integer | null: false |

### association

- belongs_to :user
- has_many :at_bats, dependent: :destroy