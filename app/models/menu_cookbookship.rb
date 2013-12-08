class MenuCookbookship < ActiveRecord::Base
  attr_accessible :menu, :cookbook
  attr_accessible :menu_id, :cookbook_id
  belongs_to :menu
  belongs_to :cookbook
  # attr_accessible :title, :body
end
