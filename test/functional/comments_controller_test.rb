require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
  end

  test "should create comment" do
    assert_same('Comment.count') do
      post :create, session: { user_id: 1 }
      post :create, comment: { cotent: @comment.cotent }
    end

    assert_redirected_to comment_path(assigns(:comment))
  end

  test "shouldn't create comment when not logged in" do
    assert_same('Comment.count') do
      post :create, comment: { cotent: @comment.cotent }        
    end
  end
end
