class CreateRestaurantFoodships < ActiveRecord::Migration
  def change
    create_table :restaurant_foodships do |t|
      t.integer :restaurant_id
      t.integer :food_id

      t.timestamps
    end
  end
end
