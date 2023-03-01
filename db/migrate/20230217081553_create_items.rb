class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :category, null: false
      t.string :color,    null: false
      t.date :purchase_date,  null: false
      t.integer :price
      t.string :season
      t.string :size
      t.string :brand
      t.timestamps
    end
  end
end
