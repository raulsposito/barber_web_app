class CommentsController < ApplicationController

    def new 
        @booking = Booking.find_by_id(params[:booking_id])
        @comment = @booking.comments.build
    end

    def create 
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
            redirect_to booking_comments_path(@comment.booking_id)
        else
            render :new 
        end
    end

    def show
        authentication_required
        @comment = Comment.find_by_id(params[:id])
    end

    def index
        if params[:booking_id]
            @comments = Booking.find(params[:booking_id]).comments 
        else
            @comments = Comment.all
        end
    end

    private 

    def comment_params
        params.require(:comment).permit(:body, :user_id, :booking_id)
    end

end