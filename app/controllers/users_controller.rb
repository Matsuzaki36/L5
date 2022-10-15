class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @users = User.new
    end
    
    def create
        @users = User.new(uid: params[:user][:uid], 
        pass: BCrypt::Password.create(params[:user][:pass]))
        @users.save
        redirect_to root_path
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to root_path
    end
end