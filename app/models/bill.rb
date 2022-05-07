class Bill < ApplicationRecord
  validates :due_date, :description, presence: true

  belongs_to :user

  has_many :bill_items, dependent: :destroy

  has_one :customer, dependent: :destroy

  accepts_nested_attributes_for :bill_items, allow_destroy: true

  accepts_nested_attributes_for :customer, allow_destroy: true
end
