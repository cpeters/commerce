module Api::V1
  class ProductSerializer < BaseSerializer
    attributes(*Product.attribute_names.map(&:to_sym))
  end
end
