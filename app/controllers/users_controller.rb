class UsersController < ApplicationController
    def new
        @user= User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Signup sucessful wel come to Article #{@user.username}"
            redirect_to articles_path
        else
            render 'new'
        end
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "Update sucessful to profile  Of  #{@user.username}"
            redirect_to articles_path
        else
            render 'edit'
        end
    end
    def show
        @user = User.find(params[:id])
        @articles = @user.articles
    end
    def index
        @users = User.all
    end
    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end