require "test_helper"

class Public::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get comfirm" do
    get public_orders_comfirm_url
    assert_response :success
  end

  test "should get complete" do
    get public_orders_complete_url
    assert_response :success
  end
end
