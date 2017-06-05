require "administrate/base_dashboard"

class RatePlanDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    product: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    start_date: Field::DateTime,
    end_date: Field::DateTime,
    recurrence: Field::String,
    price: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :product,
    :id,
    :title,
    :description,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :product,
    :id,
    :title,
    :description,
    :start_date,
    :end_date,
    :recurrence,
    :price,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :product,
    :title,
    :description,
    :start_date,
    :end_date,
    :recurrence,
    :price,
  ].freeze

  # Overwrite this method to customize how rate plans are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(rate_plan)
  #   "RatePlan ##{rate_plan.id}"
  # end
end
