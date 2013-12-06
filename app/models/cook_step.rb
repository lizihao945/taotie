class CookStep < ActiveRecord::Base
  belongs_to :cookbook
  attr_accessible :description, :image_url
end
