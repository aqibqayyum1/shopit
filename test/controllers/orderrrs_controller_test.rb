require 'test_helper'

class OrderrrsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orderrrs_index_url
    assert_response :success
  end

  test "should get show" do
    get orderrrs_show_url
    assert_response :success
  end

  test "should get new" do
    get orderrrs_new_url
    assert_response :success
  end

end
