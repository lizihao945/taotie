class Food < ActiveRecord::Base
  attr_accessible :name, :description, :image_url, :main_user, :detail

  belongs_to :main_user, class_name: 'User', foreign_key: 'main_user_id'

  has_many :user_foodships
  has_many :users, through: :user_foodships

  has_many :food_food_categoryships
  has_many :food_categories, through: :food_food_categoryships

  has_one :like
  has_many :comments
  #image_url
  validates :image_url, allow_blank: true, format: {
    with: /\.(gif|jpg|png|Png|Gif|Jpg)$/,
    message: 'Invalid'}

  validates_presence_of :name
  validates_presence_of :description
end
