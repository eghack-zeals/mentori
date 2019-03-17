class CreateDemoMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :demo_messages do |t|
      t.string :text

      t.timestamps
    end
  end
end
