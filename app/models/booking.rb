class Booking < ApplicationRecord
    belongs_to :user 
    belongs_to :barber
    has_many :comments
end
