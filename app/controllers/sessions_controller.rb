class SessionsController < ApplicationController
  def new
    @user = User.new
   end

   def destroy
     session[:user_id] = nil
     redirect_to root_url
   end

  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @user
    redirect_to '/'
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
