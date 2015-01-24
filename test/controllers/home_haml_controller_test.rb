require 'test_helper'

class HomeHamlControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
