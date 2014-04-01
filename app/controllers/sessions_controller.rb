class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by username: params[:username]
    if user.nil?
      redirect_to :back, notice: "User #{params[:username]} does not exist!"
    else
      session[:user_id] = user.id
      redirect_to users_path, notice: "Welcome back!"
    end
  end

  def destroy
    # nollataan sessio
    session[:user_id] = nil
    # uudelleenohjataan sovellus pääsivulle
    redirect_to :root
  end
end