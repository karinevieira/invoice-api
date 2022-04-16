class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :invoice_number
      t.date :due_date
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
