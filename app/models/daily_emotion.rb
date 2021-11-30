class DailyEmotion < ApplicationRecord
  belongs_to :user
  validates :date, presence: true, uniqueness: { scope: :user }
  enum emotion: { 'Very Happy': 4, 'Happy': 3, 'Neutral': 2, 'Sad': 1, 'Very Sad': 0 }
end
