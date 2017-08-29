class ReviewController < ApplicationController
    def create
        @semo=Review.new
        @semo.review=params[:review]
        @semo.free_id=params[:id]
        @semo.save
        
        redirect_to "/free/show/#{params[:id]}"
    end
    def delete
        @semo=Review.find(params[:review_id])
        @semo.destroy()
        
        redirect_to "/free/show/#{params[:id]}"
    end
end
