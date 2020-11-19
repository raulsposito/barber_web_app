class Booking < ApplicationRecord
    belongs_to :user 
    belongs_to :barber
    has_many :comments

    accepts_nested_attributes_for :comments
    validates :date, presence: true
    validate :date_cannot_be_in_the_past

    def date_cannot_be_in_the_past
        errors.add(:date, "can't be in the past") if date < Date.today
    end
    #validates :date, uniqueness: { scope: :date, message: "That day is taken."}
    scope :next_week, -> { where('date < ?', Time.now+7.days) }

end
