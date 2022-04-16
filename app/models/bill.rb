class Bill < ApplicationRecord
  validates :due_date, :description, presence: true
end
