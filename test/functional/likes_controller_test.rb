require 'test_helper'

class LikesControllerTest < ActionController::TestCase
	fixtures :likes
	fixtures :users

	def login_user
	  user = users(:one)
	  @controller.stub!(:current_user).and_return(user)
	  @model.stub!(:already_likes?).and_return(true)
	end

  test "should update" do
  	login_user
    put(:update, {id: likes(:one).id}, {user_id: users(:one).id})
    assert_response :success
  end

end
