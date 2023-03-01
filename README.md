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
※imageはActiveStorageで導入


### Association

## coordinatesテーブル

| Column | Type | Options |
| ------ | ---- | ------- |

### Association

## usersテーブル

| Column | Type | Options |
| ------ | ---- | ------- |

### Association

## commentsテーブル

| Column | Type | Options |
| ------ | ---- | ------- |

### Association



@pays_month_ratio = @pays_month.group(:category_id).sum(:price).sort_by {|_,v|v}.reverse.to_h

@pays_month_ratio = @pays_month.group(:category_id).sum(:price).sort_by {|_,v|v}.reverse.to_h
    # pie_chartはハッシュで渡されるので、category_idをcategory.nameへ変更する
    hash = {}
    @pays_month_ratio.each do |key, value|
      hash[Category.find(key).name] = value
    end
    # hash を代入し直す
    @pays_month_ratio = hash
・・・

@category_data = Item.where(category_id)
    hash = {}
    @category_data.each do |key, value|
      hash[Category.find(key).name] = value
    end
    @category_data = hash