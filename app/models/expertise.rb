class Expertise < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  enum experience: [:little, :some, :fair, :alot, :expert]
  validates_length_of :description, :maximum => 150, :allow_blank => true
  validates :experience, presence: true
end
