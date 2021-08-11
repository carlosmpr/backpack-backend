class CreateActivityReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_reviews do |t|
      t.integer :activity_id
      t.integer :user_id
      t.string :comment
      t.integer :likes

      t.timestamps
    end
  end
end
