require 'test_helper'

class LikesControllerTest < ActionController::TestCase
  test "should update" do
    put :id
    assert_response :success
  end

end
