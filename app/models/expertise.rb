class Expertise < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  validates :description, presence: true #minimum-maximum of things
  validates :experience, presence: true #between 1&5
end
