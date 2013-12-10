class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :image_url
  #email
  validates_uniqueness_of :email
  validates :email, format: { with: /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/, message: 'Invalid'}
  #name
  validates_presence_of :name, :email
  validates_uniqueness_of :name
  #password
  validates_presence_of :password_confirmation
  validates_confirmation_of :password, on: :create
  validates_presence_of :password, on: :create
  validates :password, length: {minimum: 6}

  def self.authenticate(email, password)
    user = find_by_email_and_password(email, password)
  end

  has_many :user_foodships
  has_many :foods, through: :user_foodships
  def able_to_modify_food?(food)
    self.foods.find(:all, conditions: ['food_id = ?', food.id]).size != 0
  end
end
