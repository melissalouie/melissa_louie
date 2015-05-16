class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user and @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/test', notice: 'You are now logged in.'
    end
  end

  def destroy
    session[:user.id] = nil
    redirect_to login_path
  end
end
