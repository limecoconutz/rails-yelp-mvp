class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, :category, presence: true
  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :category, inclusion: { in: CATEGORIES }
end
