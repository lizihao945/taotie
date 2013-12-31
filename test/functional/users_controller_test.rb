require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { email: @user.email, name: @user.name, password: @user.password }
    end

    assert_redirected_to user_path(assigns(:user))
  end

end
