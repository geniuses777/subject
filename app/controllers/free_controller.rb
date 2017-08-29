class FreeController < ApplicationController
    def create
    end
    def create_it
       @every=Free.new
       @every.title=params[:title]
       @every.content=params[:content]
       @every.save
       
       redirect_to '/'
    end
    def list
        unless user_signed_in?
        redirect_to '/users/sign_in'
        end
       @everypost=Free.all 
       @everyquest=Question.all
       
    end
    def show
       @every=Free.find(params[:id]) 
       @everysemo=Review.where(free_id: params[:id])
    end
    def update
        @every=Free.find(params[:id]) 
    end
    def update_it
        @every=Free.find(params[:id]) 
        @every.title=params[:title]
        @every.content=params[:content]
        @every.save
        
        redirect_to '/'
    end
    def delete
         @every=Free.find(params[:id]) 
         @every.destroy()
         
         redirect_to '/'
    end
end
