require 'test_helper'

class FoodCategoryTest < ActiveSupport::TestCase
  test "name maximum is 10" do
  	foodCategory = FoodCategory.new( name: "12345678910" )
  	assert foodCategory.invalid?
  	assert foodCategory.errors[:name].any?
  end
end
