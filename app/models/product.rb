class Product < ApplicationRecord

  has_many :rate_plans, dependent: :destroy

  validates :title, :description, :start_date, :end_date, presence: true
  validates :title, length: { maximum: 255, too_long: "%{count} characters is the maximum allowed" }

  validate :end_date_on_or_after_start_date

  scope :active, -> { where("end_date >= ?", Date.current) }

end
