class AddDiscontinuedToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :discontinued, :boolean, null: false, default: false
  end
end
