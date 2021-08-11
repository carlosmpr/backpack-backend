class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.integer :location_id
      t.string :name
      t.string :image
      t.string :description
      t.string :category
      t.string :state
      t.string :directions
      t.timestamps
    end
  end
end
