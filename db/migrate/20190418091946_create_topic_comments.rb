class CreateTopicComments < ActiveRecord::Migration[5.2]
  def change
    create_table :topic_comments do |t|
      t.references :topic
      t.references :comment

      t.timestamps
    end
  end
end
