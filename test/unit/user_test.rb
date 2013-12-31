require 'test_helper'

class UserTest < ActiveSupport::TestCase
	fixtures :users

  test "user attributes must not be empty" do
  	user = User.new
  	assert user.invalid?
  	assert user.errors[:name].any?
  	assert user.errors[:password].any?
  end

  test "user email should be valid" do
  	user = User.new( email: "hello.u" )
  	assert user.invalid?
  	assert user.errors[:email].any?
  	user = User.new( email: "hello@.u" )
  	assert user.invalid?
  	assert user.errors[:email].any?
  	user = User.new( email: "hello@..u" )
  	assert user.invalid?
  	assert user.errors[:email].any?
  	user = User.new( email: "hello@12.u" )
  	assert user.invalid?
  	assert user.errors[:email].any?
  	user = User.new( email: "hello@123.com" )
  	assert user.invalid?
  	assert user.errors[:email].empty?
  end

  def new_user(url)
  	User.new(name: "test",
             email: "test@gmail.com",
  					 password: "123123")
  end

  test "image url" do
  	bad = %w{ a.doc b.swf c.w }
  	bad.each do |image_url|
  		assert new_user( image_url: image_url ).invalid?, "#{image_url} shouldn't be valid"
  	end
  end

  test "user name should be unique" do
  	user = User.new( name: users(:one).name )
  	assert !user.save
  end
end
