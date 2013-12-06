class Food < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name
  has_many :user_foodships
  has_many :user, through: :user_foodships
end
