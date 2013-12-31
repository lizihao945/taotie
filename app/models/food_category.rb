class FoodCategory < ActiveRecord::Base
  attr_accessible :name, :category_id

  validates :name, length: {maximum: 10}

  has_many :food_food_categoryships
  has_many :foods, through: :food_food_categoryships
end
