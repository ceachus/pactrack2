class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :vendor_name
      t.string :category

      t.timestamps

    end
  end
end
