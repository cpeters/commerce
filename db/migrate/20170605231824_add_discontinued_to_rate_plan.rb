class AddDiscontinuedToRatePlan < ActiveRecord::Migration[5.1]
  def change
    add_column :rate_plans, :discontinued, :boolean, null: false, default: false
  end
end
