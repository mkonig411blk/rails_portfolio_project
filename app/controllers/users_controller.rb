class UsersController < ApplicationController

    def welcome
        if logged_in?
        current_user
        end
    end

    def signin
    end

    def new
      @user = User.new
    end

    def show
      return redirect_to root_path unless logged_in?
      @user = User.find_by(id: params[:id])
    end

    def create
      @user = User.new(user_params)
      if @user.save
          session[:user_id] = @user.id
          redirect_to user_path(current_user)
      else
          render :new
      end
    end

    def update
      user = User.find(params[:id])
      user.update(user_params)
      redirect_to user_path(user)
    end

    def edit
      @user = User.find_by(id: params[:id])
    end

    def user_params
      params.require(:user).permit!
    end

end
