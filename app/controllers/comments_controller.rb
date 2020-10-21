class CommentsController < ApplicationController

    def new 
        @booking = Booking.find_by_id(params[:id])
        @comment = @booking.build_comment
    end

    def create 
        @comment = Comment.new(comment_params)
        if @comment.save   
            redirect_to comment_path(@comment)
        else
            render :new 
        end
    end

    def show
        authentication_required
        @comment = Comment.find_by_id(params[:id])
    end

    private 

    def user_params 
        params.require(:comment).permit(:body, :user_id, :booking_id)
    end

end