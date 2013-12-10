class CreateFoodFoodCategoryships < ActiveRecord::Migration
  def change
    create_table :food_food_categoryships do |t|
      t.integer :food_id
      t.integer :food_category_id
    end
  end
end
