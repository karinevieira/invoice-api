class Customer < ApplicationRecord
  validates :name, :cpf, presence: true

  belongs_to :bill
end
