require 'test_helper'

module Api::V1
  class ProductsControllerTest < ActionDispatch::IntegrationTest

    def setup
      @product = products(:one)
    end

    test "should get index" do
      get api_v1_products_url
      assert_response :success
    end

    test "should get show" do
      get api_v1_product_url(id: @product.id)
      assert_response :success
    end

  end
end
