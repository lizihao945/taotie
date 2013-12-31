class Cookbook < ActiveRecord::Base
  attr_accessible :name, :description, :difficulty_level, :time_level, :tips, :user, :food_id
  belongs_to :user
  belongs_to :food
  has_many :cook_steps
  has_many :materials
  has_many :menu_cookbookships
  has_many :menus, through: :menu_cookbookships

  has_one :cookbook_like
  has_many :cookbook_comments
end
