class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates_associated :reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid restaurant category" }
end

