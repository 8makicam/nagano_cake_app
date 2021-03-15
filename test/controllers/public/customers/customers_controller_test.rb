require 'test_helper'

class Public::Customers::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_customers_customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_customers_customers_edit_url
    assert_response :success
  end

end
