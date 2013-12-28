class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :food
  attr_accessible :content, :user, :food
  validates_presence_of :content
end
