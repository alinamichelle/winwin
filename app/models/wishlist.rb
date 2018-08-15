class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wishes

  # validates_length_of :description, :minimum => 15, :maximum => 20, :allow_blank => false
end
