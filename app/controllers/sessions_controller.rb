class SessionsController < ApplicationController

    def new
    end

    def create
        session[:user_id] = params[:user_id]
        redirect_to users_path
    end

    def destroy
        session.delete :user_id
        redirect_to '/'
    end
end
