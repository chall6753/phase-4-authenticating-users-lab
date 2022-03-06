class SessionsController < ApplicationController

    def create
        user = User.find_by_username(params[:username])
        if user
            session[:user_id] = user.id
            render json: user
        else
            render json: {errors: "User not found"}
        end
    end
    def destroy 
        byebug
        session.delete :user_id
        byebug
        head :no_content
    end
    
end
