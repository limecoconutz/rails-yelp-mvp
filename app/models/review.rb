class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  RATINGS = [0,1,2,3,4,5]
  validates :rating, inclusion: { in: RATINGS},  numericality: { only_integer: true }
end
