class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :vendor_id
      t.string :order_date
      t.text :order_description
      t.date :quoted_arrival_date
      t.integer :user_id

      t.timestamps

    end
  end
end
