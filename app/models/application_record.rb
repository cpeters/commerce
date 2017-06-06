class ApplicationRecord < ActiveRecord::Base

  self.abstract_class = true

  scope :active, -> { where("end_date >= ?", Date.current) }
  scope :inactive, -> { where("end_date < ?", Date.current) }

  #TODO move this into a proper ActiveModel validator
  def end_date_on_or_after_start_date
    if (start_date && end_date) && (start_date > end_date)
      errors.add(:end_date, "must be on or after start date")
    end
  end

end
