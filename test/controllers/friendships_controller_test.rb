require 'test_helper'

class FriendshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get friendships_index_url
    assert_response :success
  end

  test "should get new" do
    get friendships_new_url
    assert_response :success
  end

  test "should get update" do
    get friendships_update_url
    assert_response :success
  end

  test "should get delete" do
    get friendships_delete_url
    assert_response :success
  end

end
