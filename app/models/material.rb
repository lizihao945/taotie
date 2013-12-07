class Material < ActiveRecord::Base
  belongs_to :cookbook
  attr_accessible :name, :quantity
end
