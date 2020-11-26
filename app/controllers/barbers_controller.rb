class BarbersController < ApplicationController
    
    def new
        @barber = Barber.new
    end

    def create 
        @barber = Barber.new(barber_params)
        if @barber.save
            redirect_to barber_path(@barber)
        else
            render :new 
        end
    end

    def index
        if params[:search]
            binding.pry
            @barbers = Barber.search(params[:search])
        else
            @barbers = Barber.all
        end
    end

    def show
        @barber = Barber.find_by_id(params[:id])
    end

    private 

    def barber_params 
        params.require(:barber).permit(:name, :email, :image_url)
    end

end
