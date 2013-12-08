class Menu < ActiveRecord::Base
  belongs_to :user
  has_many :menu_cookbookships
  has_many :cookbooks, through: :menu_cookbookships
  attr_accessible :description, :name
end
