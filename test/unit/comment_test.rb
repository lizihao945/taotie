require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	fixtures :users

  def new_comment(content)
  	User.new(user: users(:one),
             content: "123123")
  end

  test "comment length minimum should be 10" do
  	comment = Comment.new( content: "123456" )
  	assert comment.invalid?
  	assert comment.errors[:content].any?
  end

  test "comment should be clean" do
  	comment = Comment.new( content: "bitch!!!!!!!!!!!!!" )
  	assert comment.invalid?
  	assert comment.errors[:content].any?
  end

  test "comment content must not be empty" do
  	comment = Comment.new( content: " " )
  	assert comment.invalid?
  	assert comment.errors[:content].any?
  end

end
