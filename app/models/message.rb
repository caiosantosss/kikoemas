class Message < ApplicationRecord
 belongs_to :booking
 belongs_to :messageable, polymorphic: true
end
