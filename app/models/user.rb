class User < ApplicationRecord
    has_secure_password
    
    has_many :bookings
    has_many :comments ,through: :bookings
    has_many :barbers ,through: :bookings

    validates :name, presence: true 
    validates :email, presence: true
    validates :email, uniqueness: true 

    def self.find_or_create_by_google(auth)
        #User.where(email: auth[:info][:email]).first_or_initialize do |u|
        self.find_or_create_by(email: auth[:info][:email]) do |u|
            u.password = SecureRandom.hex
            u.name = auth[:info][:name]
        end
    end
end
