class AddDateOrderedToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :date_ordered, :date
  end
end
