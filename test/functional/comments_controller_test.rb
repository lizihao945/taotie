require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
  end

  test "shouldn't create comment to no food" do
    assert_same('Comment.count') do
    	Session.new( user_id: 1 )
      post :create, comment: { content: @comment.cotent }
    end
  end

  test "shouldn't create comment when not logged in" do
    assert_same('Comment.count') do
      post :create, comment: { content: @comment.cotent }
    end
		assert_redirected_to :action => "login"
	end
end
