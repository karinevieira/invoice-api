class CustomerSerializer < ActiveModel::Serializer
  attributes :name, :cpf, :phone

  belongs_to :bill
end
