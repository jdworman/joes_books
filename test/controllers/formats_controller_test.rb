require 'test_helper'

class FormatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get formats_index_url
    assert_response :success
  end

  test "should get show" do
    get formats_show_url
    assert_response :success
  end

  test "should get new" do
    get formats_new_url
    assert_response :success
  end

  test "should get edit" do
    get formats_edit_url
    assert_response :success
  end

  test "should get create" do
    get formats_create_url
    assert_response :success
  end

end
