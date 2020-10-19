require 'test_helper'

class Admins::MatchesControllerTest < ActionDispatch::IntegrationTest
  test "should get match" do
    get admins_matches_match_url
    assert_response :success
  end

end
