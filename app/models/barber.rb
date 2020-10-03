class Barber < ApplicationRecord
    has_many :bookings 
    has_many :users through: :bookings
    has_many :comments through: :bookings
end
