class School < ApplicationRecord
  has_many :users
  has_many :counselors
end
