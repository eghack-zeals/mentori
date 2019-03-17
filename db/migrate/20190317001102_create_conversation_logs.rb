class CreateConversationLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :conversation_logs do |t|
      t.references :users,  index: true, foreign_key: true
      t.integer :bot, null: false
      t.timestamps
    end
  end
end
