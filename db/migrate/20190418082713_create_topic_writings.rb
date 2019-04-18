class CreateTopicWritings < ActiveRecord::Migration[5.2]
  def change
    create_table :topic_writings do |t|
      t.references :topic
      t.references :writing

      t.timestamps
    end
  end
end
