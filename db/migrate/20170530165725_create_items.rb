class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :package_id
      t.integer :amount
      t.integer :return_id
      t.integer :order_id

      t.timestamps

    end
  end
end
