class BookingsController < ApplicationController
    before_action :authentication_required

    def new 
        @booking = Booking.new
    end

    def index
        @bookings = Booking.all
    end

    def show
        @booking = Booking.find_by_id(params[:booking_id])
    end

    def create 
        @booking = current_user.bookings.build(bookings_params)
        if @booking.save 
            redirect_to bookings_path
        else 
            render :new 
        end
    end

    private 

    def bookings_params
        params.require(:booking).permit(:date, :user_id, :barber_id)
    end
end
