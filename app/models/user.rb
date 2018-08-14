class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :expertises
  validates :name, presence: true, on: :update
  validates :location, presence: true, on: :update
  validates :birthday, presence: true, on: :update
  validates_length_of :tagline, :minimum => 10, :maximum => 120, presence: true, on: :update
  enum gender: [:undisclosed, :female, :male, :other]


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
