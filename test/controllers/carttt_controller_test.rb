require 'test_helper'

class CartttControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get carttt_show_url
    assert_response :success
  end

end
