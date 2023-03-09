require "test_helper"

class PyschologistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pyschologists_new_url
    assert_response :success
  end

  test "should get index" do
    get pyschologists_index_url
    assert_response :success
  end

  test "should get show" do
    get pyschologists_show_url
    assert_response :success
  end

  test "should get edit" do
    get pyschologists_edit_url
    assert_response :success
  end
end
