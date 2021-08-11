class CreateRails < ActiveRecord::Migration[6.1]
  def change
    create_table :rails do |t|
      t.string :g
      t.string :friend_requests
      t.integer :user_send_id
      t.integer :user_invite_id

      t.timestamps
    end
  end
end
