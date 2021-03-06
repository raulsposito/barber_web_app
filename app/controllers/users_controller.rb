class UsersController < ApplicationController

    def new 
        @user = User.new 
    end

    def create 
        @user = User.new(user_params)
        if @user.save   
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            render :new 
        end
    end

    def show
        authentication_required
        @user = User.find_by_id(params[:id])
    end

    def index 
        @user = User.all
    end

    private 

    def user_params 
        params.require(:user).permit(:name, :email, :phone, :password)
    end

end
