class Booking < ApplicationRecord
    belong_to :user 
    belong_to :barber
    has_many :comments
end
