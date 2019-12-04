class DropChats < ActiveRecord::Migration[5.2]
  def change
    drop_table :chats do |t|
      t.text :message
      t.string :username
      t.timestamps
    end
  end
end
