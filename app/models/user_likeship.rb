class UserLikeship < ActiveRecord::Base
  belongs_to :like
  belongs_to :user
  attr_accessible :like, :user
end
