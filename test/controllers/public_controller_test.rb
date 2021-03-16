require 'test_helper'

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get orders" do
    get public_orders_url
    assert_response :success
  end

  test "should get new" do
    get public_new_url
    assert_response :success
  end

  test "should get index" do
    get public_index_url
    assert_response :success
  end

  test "should get show" do
    get public_show_url
    assert_response :success
  end

end
