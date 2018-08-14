class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  validates :location, presence: true
  validates :birthday, presence: true
  validates :tagline, presence: true #minimum-maximum of things

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
