require 'test_helper'

class TweetsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweets)
  end
end
