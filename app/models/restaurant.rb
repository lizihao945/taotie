class Restaurant < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :name, :user, :image_url
end
