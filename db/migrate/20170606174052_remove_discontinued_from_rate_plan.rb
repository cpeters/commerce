class RemoveDiscontinuedFromRatePlan < ActiveRecord::Migration[5.1]
  def change
    remove_column :rate_plans, :discontinued, :boolean
  end
end
