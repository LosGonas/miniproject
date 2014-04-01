class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by email: params[:email]

    if user.nil? or not user.authenticate params[:password]
      redirect_to :back, notice: "username and password do not match"
    else
      session[:user_id] = user.id
      redirect_to users_path, notice: "Welcome back!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_path, notice: "Logged out!"
  end
end