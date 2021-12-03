class User < ApplicationRecord
  # Include default devise modules. Others available are:
  belongs_to :school
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  has_many :messages, as: :sender
  has_many :daily_emotions, dependent: :destroy
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable, #remove before demo day
         :recoverable, :rememberable, :validatable

  def most_recent_past_booking
    past = bookings.where('start_time < ?', Time.now)
    return past.map { |booking| Time.now - booking.start_time }.min
  end

  def past_bookings
    bookings.where('start_time < ?', Time.now)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def emotion_today?
    daily_emotions.find_by(date: Date.today).present?
  end
end
