class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :name_ua
      t.string :name_en
      t.string :name_ru

      t.timestamps
    end
  end
end
