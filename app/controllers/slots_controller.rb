class SlotsController < ApplicationController

    def new 
        binding.pry
        @barber = Barber.find_by(params[:barber_id])
        @slot = Barber.slot.build(slots_params)
    end

    def index
        @slots = Slots.where("available" => true )
    end

    def create 
        binding.pry
    end

    private 

    def slots_params
        params.require(:slot).permit(:available, :start_time, :duration, :barber_id)
    end

end
