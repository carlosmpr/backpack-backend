class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :password_digest
      t.boolean :swimming
      t.boolean :hiking
      t.boolean :walking
      t.boolean :eating
      t.boolean :touring
      t.boolean :camping
      t.timestamps
    end
  end
end
