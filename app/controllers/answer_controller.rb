class AnswerController < ApplicationController
    def create
    @nemo=Answer.new
    @nemo.answer=params[:answer]
    @nemo.question_id=params[:id]
    @nemo.save
    
    redirect_to "/question/show/#{params[:id]}"
    end
    def delete
    @nemo=Answer.find(params[:answer_id])
    @nemo.destroy()
    
    redirect_to "/question/show/#{params[:id]}"
    end
end
