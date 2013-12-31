class CookbookLike < ActiveRecord::Base
  belongs_to :cookbook
  attr_accessible :count
  has_many :user_cookbook_likeships
  has_many :users, through: :user_cookbook_likeships
end
