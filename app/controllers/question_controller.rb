class QuestionController < ApplicationController
    def create
        
    end
    def create_it
       @star=Question.new
       @star.quest=params[:quest]
       @star.save
       
       redirect_to '/'
    end
    def show
        @star=Question.find(params[:id])
        @everynemo=Answer.where(question_id: params[:id])
    end
    def update
       @star=Question.find(params[:id]) 
    end
    def update_it
        @star=Question.find(params[:id]) 
        @star.quest=params[:quest]
        @star.save
       
        redirect_to '/'
    end
    def delete
         @star=Question.find(params[:id]) 
         @star.destroy()
         
         redirect_to '/'
    end
end
