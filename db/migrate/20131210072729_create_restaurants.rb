class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :restaurants, :user_id
  end
end
