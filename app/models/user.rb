class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  validates :location, presence: true
  validates :birthday, presence: true
  alidates_length_of :tagline, :minimum => 15, :maximum => 20, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
