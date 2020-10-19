require 'test_helper'

class Admins::MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_messages_index_url
    assert_response :success
  end

end
