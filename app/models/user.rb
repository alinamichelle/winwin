class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :expertises
  has_one :wishlist
  has_many :wishes, through: :wishlist
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'

  validates :name, presence: true, on: :update
  validates :location, presence: true, on: :update
  validates :birthday, presence: true, on: :update
  validates_length_of :tagline, :minimum => 10, :maximum => 120, presence: true, on: :update
  enum gender: [:female, :male, :other]
  accepts_nested_attributes_for :expertises



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end


