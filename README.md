# テーブル設計

## itemsテーブル

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| category_id   | integer | null: false |
| color_id      | integer | null: false |
| purchase_date | date    | null: false |
| price         | integer |             |
| season_id     | integer |             |
| size_id       | integer |             |
| brand         | string  |             |
| birthdate     | date    |             |
※imageはActiveStorageで導入


### Association

## coordinatesテーブル

| Column           | Type        | Options                        |
| ---------------- | ----------- | ------------------------------ |

### Association

## usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |

### Association

## commentsテーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |

### Association
