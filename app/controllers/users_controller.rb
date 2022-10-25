class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @users = User.new
    end
    
    def create
        @user = User.new(
            uid: params[:user][:uid],
            password: params[:user][:password],
            password_confirmation: params[:user][:password_confirmation])
        if @user.save
            redirect_to users_path
        else
            render 'new'
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to root_path
    end
end