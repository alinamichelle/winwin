class Wish < ApplicationRecord
  belongs_to :wishlist
  has_one :user, through: :wishlist

  validates :description, presence: true
end
