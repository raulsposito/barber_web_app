class Booking < ApplicationRecord
    belongs_to :user 
    belongs_to :barber
    has_many :comments

    accepts_nested_attributes_for :comments
    validates :date, presence: true
    #validates :date, uniqueness: { scope: :datetime, message: "That day is taken, choose another one."}
    scope :next_week, -> { where('date < ?', Time.now+7.days) }
end
