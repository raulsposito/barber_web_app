class Booking < ApplicationRecord
    belongs_to :user 
    belongs_to :barber
    has_many :comments

    accepts_nested_attributes_for :comments
    validates :date, presence: true
    #validates :date, uniqueness: { scope: :date, message: "That day is taken."}
    scope :next_week, -> { where('date < ?', Time.now+7.days) }


    def cancel_booking
        booking.status = false
    end

    def self.active?
        if 
            self.status = true 
        else
            false
        end
    end

end
