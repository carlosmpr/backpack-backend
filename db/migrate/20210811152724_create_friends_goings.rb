class CreateFriendsGoings < ActiveRecord::Migration[6.1]
  def change
    create_table :friends_goings do |t|
      t.integer :user_activity_id
      t.integer :user_friend_id
      t.string  :status
      t.integer :friend_id
      t.timestamps
    end
  end
end
