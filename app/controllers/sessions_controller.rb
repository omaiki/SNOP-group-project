class SessionsController < ApplicationController
  def new
      # user = User.find_by_email(params[:email])
      # if user.authenticate(params[:password])
      #   session[:user_id] = user.id
      #   redirect_to user
      # end
  end

  def create
    user = User.find_by_email(params[:email])
    p params[:email]
    p '**********************************************************'
    # p current_user
    # if the user exists and the password enteres is correct
    if user && user.authenticate(params[:password])
      #save the user id inside a session
      session[:user_id] = user.id
      # current_user
      # p current_user
      redirect_to user
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end