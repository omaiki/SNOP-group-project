class SoldDishesController < ApplicationController
  load_and_authorize_resource

  def new
  end

  def destroy
    SoldDish.delete_all
    p "in the destroy all sold dishes route"
    p "*" * 50
    redirect_to user_path(current_user)
  end
end
