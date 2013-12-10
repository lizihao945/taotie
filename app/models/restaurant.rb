class Restaurant < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :name, :user
end
