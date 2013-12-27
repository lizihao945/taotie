class Likeship < ActiveRecord::Base
  belongs_to :food
  belongs_to :user
  # attr_accessible :title, :body
end
