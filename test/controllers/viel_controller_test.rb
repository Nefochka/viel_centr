require 'test_helper'

class VielControllerTest < ActionController::TestCase
  test "should get massage" do
    get :massage
    assert_response :success
  end

end
