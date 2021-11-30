class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :counselor
  has_many :messages
  enum mode: { chatroom: 0, video: 1, in_person: 2 }
  # validates :start_time, presence: true
  validate :check_start_time
  validates :mode, presence: true

  def check_start_time
    if !suggested && start_time.nil?
      errors.add(:start_time, "Booking needs a start time.")
    end
  end
end
