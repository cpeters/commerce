module Api::V1
  class RatePlanSerializer < BaseSerializer
    attributes(*RatePlan.attribute_names.map(&:to_sym))
  end
end
