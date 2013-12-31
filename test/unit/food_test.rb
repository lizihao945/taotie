require 'test_helper'

class FoodTest < ActiveSupport::TestCase
	fixtures :foods

  test "food attributes must not be empty" do
  	food = Food.new
  	assert food.invalid?
  	assert food.errors[:name].any?
  	assert food.errors[:description].any?
  end
end
