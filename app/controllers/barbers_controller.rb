class BarbersController < ApplicationController
    
    def new
        @barber = Barber.new
    end

    def create 
        #binding.pry
        @barber = Barber.new(barber_params)
        if @barber.save
            redirect_to barber_path(@barber)
        else
            render :new 
        end
    end

    def index 
        @barbers = Barber.all 
    end

    def show
        @barber = Barber.find_by_id(params[:id])
    end

    private 

    def barber_params 
        params.require(:barber).permit(:name, :email, :image_url)
    end

end
