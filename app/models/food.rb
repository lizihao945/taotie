class Food < ActiveRecord::Base
  attr_accessible :name, :description, :image_url

  has_many :user_foodships
  has_many :users, through: :user_foodships

  has_many :food_food_categoryships
  has_many :food_categories, through: :food_food_categoryships

  validates_presence_of :name
  validates_presence_of :description
end
