require 'test_helper'

class JobPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get howworks" do
    get :howworks
    assert_response :success
  end

  test "should get upload" do
    get :upload
    assert_response :success
  end

end
