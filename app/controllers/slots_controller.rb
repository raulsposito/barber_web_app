class SlotsController < ApplicationController

    def new 
        @slot = Slot.new
    end

    def index
        @slots = Slots.where("available" => true )
    end

    def create 
        #binding.pry
        @barber = Barber.find_by(params[:barber_id])
        @slot = Barber.slot.build
    end

    private 

    def slots_params
        params.require(:slot).permit(:available, :start_time, :duration, :barber_id)
    end

end
