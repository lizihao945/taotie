class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :food
      t.text :content

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :food_id
  end
end
