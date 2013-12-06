class UserFoodship < ActiveRecord::Base
  attr_accessible :food_id, :user_id
  belongs_to :food
  belongs_to :user
end
