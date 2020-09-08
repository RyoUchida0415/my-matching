require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

<<<<<<< HEAD
=======
  test "should get update" do
    get users_update_url
    assert_response :success
  end

>>>>>>> a6f97cf559db74f324d0664171ea5a5194d8c456
end
