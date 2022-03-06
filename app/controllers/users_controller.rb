class UsersController < ApplicationController
    def show 
        current_user = User.find_by_id(session[:user_id])
        render json: current_user
    end
end
