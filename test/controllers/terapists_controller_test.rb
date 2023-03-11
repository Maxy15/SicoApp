require "test_helper"

class TerapistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get terapists_new_url
    assert_response :success
  end

  test "should get index" do
    get terapists_index_url
    assert_response :success
  end

  test "should get show" do
    get terapists_show_url
    assert_response :success
  end

  test "should get edit" do
    get terapists_edit_url
    assert_response :success
  end
end
