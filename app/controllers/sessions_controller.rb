class SessionsController < ApplicationController
  def new
    @user = User.new
   end

  def create
    user = User.find_by(email: params['email'])
    if user && user.authenticate(params['password'])
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      flash[:error] = 'Invalid username and/or password. Please try again!'
      redirect_to login_path
    end
  end

  def destroy
    # binding.pry
    session[:user_id] = nil
    redirect_to root_url
  end
end
