class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        User.create(name:params["user"]["name"])
        redirect_to "/"
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        user = User.find(params[:id])
        user.update(name:params["user"]["name"])
        redirect_to "/"
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.delete
        redirect_to "/"
    end
end
