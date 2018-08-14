class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true, on: :update
  validates :location, presence: true, on: :update
  validates :birthday, presence: true, on: :update
  validates_length_of :tagline, :minimum => 15, :maximum => 20, presence: true, on: :update

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
