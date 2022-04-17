class BillItem < ApplicationRecord
  validates :name, :quantity, :price, :total, presence: true

  belongs_to :bill
end
