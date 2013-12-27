class Like < ActiveRecord::Base
  belongs_to :food
  has_many :user_likeships
  has_many :users, through: :user_likeships
  attr_accessible :count
end
