class UserController < ApplicationController
   def index 
       @users = User.all
       render json: @users
   end

   def create 
        user = User.create(email: params[:email], username: params[:username])
        if user.valid?
            render json: user
        else
            render json: user.errors.messages
        end
   end

end