class UserSerializer < ActiveModel::Serializer
  attributes :email

  has_many :bills
end