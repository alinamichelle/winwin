class Wish < ApplicationRecord
  belongs_to :wishlist
  has_one :user, through: :wishlist


end
