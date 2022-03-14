require "test_helper"

class Public::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get unsubscibe" do
    get public_customers_unsubscibe_url
    assert_response :success
  end

  test "should get withdraw" do
    get public_customers_withdraw_url
    assert_response :success
  end
end
