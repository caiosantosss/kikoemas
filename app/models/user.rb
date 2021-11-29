class User < ApplicationRecord
  # Include default devise modules. Others available are:
  belongs_to :school
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  has_many :messages, as: :sender
  has_many :daily_emotions, dependent: :destroy
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
