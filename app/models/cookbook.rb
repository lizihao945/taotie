class Cookbook < ActiveRecord::Base
  attr_accessible :description, :difficulty_level, :time_level, :tips, :user, :food_id
  belongs_to :user
  belongs_to :food
  has_many :cook_steps
  has_many :materials
  has_many :menu_cookbookships
  has_many :menus, through: :menu_cookbookships

  has_one :cookbook_like
  has_many :cookbook_comments

	validates_presence_of :description
  validates_presence_of :difficulty_level
  validates_presence_of :time_level
end
