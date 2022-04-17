class CreateBillItems < ActiveRecord::Migration[6.0]
  def change
    create_table :bill_items do |t|
      t.string :name
      t.string :quantity
      t.string :price
      t.string :total
      t.references :bill, foreign_key: true

      t.timestamps
    end
  end
end
