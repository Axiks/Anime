class CreateWritings < ActiveRecord::Migration[5.2]
  def change
    create_table :writings do |t|
      t.integer :type
      t.string :name_ua
      t.string :name_jp
      t.string :name_en
      t.string :name_ru
      t.string :description_ua
      t.string :description_en
      t.integer :genre
      t.date :release_date
      t.integer :series_count

      t.timestamps
    end
  end
end
