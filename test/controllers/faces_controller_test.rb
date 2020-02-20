require 'test_helper'

class FacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get faces_index_url
    assert_response :success
  end

  test "should get show" do
    get faces_show_url
    assert_response :success
  end

  test "should get new" do
    get faces_new_url
    assert_response :success
  end

  test "should get edit" do
    get faces_edit_url
    assert_response :success
  end

end
