class CreateReturns < ActiveRecord::Migration[5.0]
  def change
    create_table :returns do |t|
      t.date :ship_date
      t.date :return_by_date
      t.text :return_notes
      t.date :vendor_receipt_date
      t.date :refund_receipt_date
      t.string :return_reason

      t.timestamps

    end
  end
end
