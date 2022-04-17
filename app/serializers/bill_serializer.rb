class BillSerializer < ActiveModel::Serializer
  attributes :id, :invoice_number, :due_date, :description, :status
end
