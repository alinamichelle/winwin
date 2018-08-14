class Expertise < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  validates_length_of :description, :maximum => 150, :allow_blank => true
  validates :experience, presence: true, :inclusion => {:in => [1..5]}
end
