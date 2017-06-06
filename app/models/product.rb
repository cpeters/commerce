class Product < ApplicationRecord
  has_many :rate_plans, dependent: :destroy

  validates :title, :description, :start_date, :end_date, presence: true
  validates :title, length: { maximum: 255, too_long: "%{count} characters is the maximum allowed" }

end
