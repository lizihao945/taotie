class UserCookbookLikeship < ActiveRecord::Base
  belongs_to :cookbook_like
  belongs_to :user
  attr_accessible :cookbook_like, :user
end
