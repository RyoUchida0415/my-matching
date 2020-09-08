require 'test_helper'

class FollowerControllerTest < ActionDispatch::IntegrationTest
  test "should get followed" do
    get follower_followed_url
    assert_response :success
  end

end
