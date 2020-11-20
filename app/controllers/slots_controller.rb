class SlotsController < ApplicationController

    def new 
        @slot = Slot.new
    end

    def index
        @slots = Slots.where("available" => true )
    end

    private 

    def slots_params
        params.require(:slot).permit(:available, :start_time, :duration, :barber_id)
    end

end
