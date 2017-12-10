require 'test_helper'

class GoalsOwnControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get goals_own_index_url
    assert_response :success
  end

end
