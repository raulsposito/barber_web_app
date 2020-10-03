class User < ApplicationRecord
    has_secure_password
    has_many :bookings
    has_many :comments ,through: :bookings
    has_many :barbers ,through: :bookings
end
