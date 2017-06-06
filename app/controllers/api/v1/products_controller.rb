module Api::V1
  class ProductsController < BaseController

    def index
      # Only return active products to customers
      products = Product.where("end_date >= ?", Date.current)
      render jsonapi: products, each_serializer: ProductSerializer
    end

    def show
      product = Product.find(params[:id])
      render jsonapi: product, serializer: ProductSerializer
    end

  end
end
