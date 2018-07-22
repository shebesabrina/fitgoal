class SessionsController < ApplicationController
  def new
    @user = User.new
   end

  def create
    # binding.pry
    user = User.find_by(email: params['email'])
    if user && user.authenticate(params['password'])
      session[:id] = user.id
      redirect_to user_path(user)
    else
      flash[:error] = 'Invalid username and/or password. Please try again!'
      redirect_to login_path
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_url
  end
end
