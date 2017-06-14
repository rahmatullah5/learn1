class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(name: params[:name])
    if user.try(:aunthenticate, params[:password])
      session[:user_id] = user_id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid Username / Password"
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
