class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cpf
      t.string :phone
      t.references :bill, foreign_key: true

      t.timestamps
    end
  end
end
