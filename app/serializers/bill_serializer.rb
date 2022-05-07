class BillSerializer < ActiveModel::Serializer
  attributes :id, :invoice_number, :due_date, :description, :status

  belongs_to :user
  has_many :bill_items
  has_one :customer
end
