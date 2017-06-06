module Api::V1
  class ProductsController < BaseController

    def index
      products = Product.active
      render jsonapi: products, each_serializer: ProductSerializer
    end

    def show
      product = Product.find(params[:id])
      render jsonapi: product, serializer: ProductSerializer
    end

  end
end
