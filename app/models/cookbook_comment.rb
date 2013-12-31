class CookbookComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :cookbook
  attr_accessible :content, :user, :cookbook
  validates_presence_of :content
  validates :content, length: {minimum: 10}
  validates :content, format: { without: /fuck/ }

end
