class UsersController < ApplicationController

  def index
    @solddish= SoldDish.all
  end

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      p user_params
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation)
  end

end
