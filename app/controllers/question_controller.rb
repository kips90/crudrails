class QuestionController < ApplicationController
   def index 
       @questions=Question.all.includes(:user)
    #    @questions = Question.all
       render json: @questions
    #    (include: :user)
   end

   def create 
        question = Question.create(title: params[:title], description: params[:description], user_id: params[:user])
        if question.valid?
            render json: question
        else
            render json: question.errors.messages
        end
   end

end