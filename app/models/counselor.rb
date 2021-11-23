class Counselor < ApplicationRecord
  # Include default devise modules. Others available are:
  belongs_to :school
  has_many :bookings
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
