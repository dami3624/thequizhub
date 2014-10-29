require 'test_helper'

class QuizHubControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
