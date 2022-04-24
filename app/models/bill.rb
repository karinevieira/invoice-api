class Bill < ApplicationRecord
  validates :due_date, :description, presence: true

  belongs_to :user

  has_many :bill_items, dependent: :destroy

  accepts_nested_attributes_for :bill_items, allow_destroy: true
end
