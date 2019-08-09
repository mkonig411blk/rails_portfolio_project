class SessionsController < ApplicationController

#regular signup
    def new
        @user = User.new
        render :login
    end

#regular signin
  def create
    # @user = User.find_by(username: params[:username])
    # return head(:forbidden) unless @user.authenticate(params[:password])
    # session[:user_id] = @user.id
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to goals_path
    else
        flash[:error] = "Sorry, your email or password is incorrect."
        redirect_to '/login'
    end
 end
# omniauth signup/signin
  def createfb
  @user = User.find_or_create_by(uid: auth['uid']) do |u|
    u.name = auth['info']['name']
    u.email = auth['info']['email']
    end
    session[:user_id] = @user.id
    render 'welcome/home'
  end

  def destroy
    session.clear
    redirect_to '/'
  end

    private

    def auth
      request.env['omniauth.auth']
    end

end
