class BillItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :price, :total, :bill_id

  belongs_to :bill

  def price
    "R$ #{object.price}"
  end

  def total
    "R$ #{object.total}"
  end
end
