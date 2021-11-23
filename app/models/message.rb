class Message < ApplicationRecord
 belongs_to :booking
 belongs_to :sender, polymorphic: true
end
