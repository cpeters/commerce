require "administrate/base_dashboard"

class ProductDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    rate_plans: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    start_date: Field::DateTime,
    end_date: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    discontinued: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :title,
    :rate_plans,
    :start_date,
    :end_date,
    :discontinued,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :description,
    :start_date,
    :end_date,
    :created_at,
    :updated_at,
    :discontinued,
    :rate_plans,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :description,
    :start_date,
    :end_date,
    :discontinued,
    :rate_plans,
  ].freeze

  # Overwrite this method to customize how products are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(product)
  #   "Product ##{product.id}"
  # end
end
