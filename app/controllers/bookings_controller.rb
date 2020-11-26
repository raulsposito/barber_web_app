class BookingsController < ApplicationController
    before_action :authentication_required

    def new 
        @booking = Booking.new
    end

    def index
        @bookings = current_user.bookings
    end

    def next_week
        @bookings = current_user.bookings.next_week
    end

    def show
        @booking = Booking.find_by_id(params[:id])
    end

    def create 
        @booking = current_user.bookings.build(bookings_params)
        @booking.status = true
        @booking.duration = 1.hour
        if @booking.save 
            redirect_to bookings_path
        else 
            render :new 
        end
    end

    private 

    def bookings_params
        params.require(:booking).permit(:date, :user_id, :barber_id, :status, :duration)
    end
end
