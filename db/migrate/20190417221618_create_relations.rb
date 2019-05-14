class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.integer :topic_id
      t.integer :writing_id

      t.timestamps
    end
  end
end
