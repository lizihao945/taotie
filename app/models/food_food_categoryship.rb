class FoodFoodCategoryship < ActiveRecord::Base
	attr_accessible :food_category, :food
  attr_accessible :food_category_id, :food_id
  belongs_to :food_category
  belongs_to :food
end
