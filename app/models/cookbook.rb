class Cookbook < ActiveRecord::Base
  attr_accessible :description, :difficulty_level, :time_level, :tips, :user
  belongs_to :user
  has_many :cook_steps
  has_many :materials
end
