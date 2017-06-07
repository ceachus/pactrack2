class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.text :notes
      t.string :tracking_number
      t.date :tracking_arrival_date
      t.integer :order_id
      t.date :date_of_receipt

      t.timestamps

    end
  end
end
