require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get FAQ" do
    get :FAQ
    assert_response :success
  end

  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get General_Info" do
    get :General_Info
    assert_response :success
  end

end
