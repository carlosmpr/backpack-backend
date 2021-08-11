class CreateChatRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chat_rooms do |t|
      t.integer :user_id
      t.integer :user_id2

      t.timestamps
    end
  end
end
