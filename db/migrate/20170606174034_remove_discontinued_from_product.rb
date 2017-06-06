class RemoveDiscontinuedFromProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :discontinued, :boolean
  end
end
