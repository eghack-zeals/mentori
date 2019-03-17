class CreateConversationContents < ActiveRecord::Migration[5.2]
  def change
    create_table :conversation_contents do |t|
      t.references :conversation_log,  index: true, foreign_key: true, null: false
      t.string :text, null: false
      t.timestamps
    end
  end
end
