class School < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :counselors, dependent: :destroy
end
