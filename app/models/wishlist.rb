class Wishlist < ApplicationRecord
  belongs_to :user

  validates :description, presence: true #minimum-maximum of things
end
