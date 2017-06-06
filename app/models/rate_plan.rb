class RatePlan < ApplicationRecord

  RECURRENCES = %w(one-time monthly quarterly annually).freeze

  belongs_to :product

  validates :title, :description, :start_date, :end_date, :recurrence, :price, presence: true
  validates :title, length: { maximum: 255, too_long: "%{count} characters is the maximum allowed" }
  validates :recurrence, inclusion: { in: RECURRENCES }

  validate :end_date_on_or_after_start_date

end
