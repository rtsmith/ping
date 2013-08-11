require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  test "should have json response to index action" do
    get(:index, {'format' => 'json'})
    assert_response :success
  end
end

    
