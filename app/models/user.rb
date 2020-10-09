class User < ApplicationRecord
    has_secure_password
    has_many :bookings
    has_many :comments ,through: :bookings
    has_many :barbers ,through: :bookings

    validates :name, presence: true 
    validates :phone, presence: true 
    validates :email, presence: true
    validates :email, uniqueness: true 
end
