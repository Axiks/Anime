class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.integer :writing_id
      t.integer :img_id
      t.integer :user_id

      t.timestamps
    end
  end
end
