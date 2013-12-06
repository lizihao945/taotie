class Cookbook < ActiveRecord::Base
  attr_accessible :description, :difficulty_level, :time_level, :tips, :user
  has_many :cook_steps
end
