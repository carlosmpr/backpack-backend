class CreateFirendRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :firend_requests do |t|
      t.integer :user_id
      t.integer :user_invite_id

      t.timestamps
    end
  end
end
