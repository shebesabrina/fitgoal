class SessionsController < ApplicationController
  def new
    @user = User.new
   end

   def destroy
     session[:user_id] = nil
     redirect_to root_url
   end

  def create
    @user = strava_omniauth
    session[:user_id] = @user.id
    redirect_to dashboard_path
  end

  def strava_omniauth
    user = User.find_or_create_by(uid: auth_hash['uid'])
    user.name = auth_hash['info']['first_name']+" "+auth_hash['info']['last_name']
    user.email = auth_hash['info']['email']
    user.uid = auth_hash['uid']
    binding.pry
    user.save!
    user
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end




  #   user = User.find_by(email: params['email'])
  #   if user && user.authenticate(params['password'])
  #     session[:user_id] = user.id
  #     redirect_to dashboard_path
  #   else
  #     flash[:error] = 'Invalid username and/or password. Please try again!'
  #     redirect_to login_path
  #   end
  # end

end
