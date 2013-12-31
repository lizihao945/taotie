require 'test_helper'

class FoodTest < ActiveSupport::TestCase
	fixtures :foods

  test "food attributes must not be empty" do
  	food = Food.new
  	assert food.invalid?
  	assert food.errors[:name].any?
  	assert food.errors[:description].any?
  end

  test "food image can be empty" do
  	food = foods(:one)
  	food.image_url = ""
  	assert food.errors[:one].empty?
  end

  def new_food(url)
  	Food.new(name: "test",
             description: "test",
  					 image_url: url)
  end

  test "image url" do
  	bad = %w{ a.doc b.swf c.w }
  	bad.each do |image_url|
  		assert new_food( image_url: image_url ).invalid?, "#{image_url} shouldn't be valid"
  	end
  end

  test "food detail length minimum is 100" do
  	food = foods(:one)
  	food.detail = "123"
  	assert food.invalid?
  end

end
