class Barber < ApplicationRecord

    has_many :bookings 
    has_many :slots
    accepts_nested_attributes_for :slots
    has_many :users ,through: :bookings
    has_many :comments ,through: :bookings

    scope :search, -> (query) { where('name like ?', "%#{query}%") }
end
