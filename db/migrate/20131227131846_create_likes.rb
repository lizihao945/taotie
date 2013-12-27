class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :food
      t.integer :count

      t.timestamps
    end
    add_index :likes, :food_id
  end
end
