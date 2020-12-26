class SessionController < ApplicationController

  def new
    # This route is caught by Omniauth Middleware and is invisible to rails routes
    redirect_to '/auth/github'
  end

  def create
    user = User::Authenticable.authenticate(authorize_params)
    session[:uid] = user.uid
    redirect_to root_path
  end

  def destroy
    session.delete(:uid)
    redirect_to root_path
  end

  private

  def authorize_params
    request.env.fetch('omniauth.auth')
  end

end