class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :name
      t.string :description
      t.integer :creator

      t.timestamps
    end
  end
end
