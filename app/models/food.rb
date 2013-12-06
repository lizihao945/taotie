class Food < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :description, :category
  has_many :user_foodships
  has_many :users, through: :user_foodships
end
