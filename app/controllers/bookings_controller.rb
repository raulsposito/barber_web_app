class BookingsController < ApplicationController
    before_action :authentication_required

    def new 
        @booking = Booking.new
    end

    def index
    end
end
