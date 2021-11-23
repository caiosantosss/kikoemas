class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :counselor
  # has_many :messages
  enum mode: [chatroom: 0, video: 1, in_person: 2]
  validates :counselor_id, presence: true
  validates :user_id, presence: true
end
