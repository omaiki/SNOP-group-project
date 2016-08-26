class SoldDishesController < ApplicationController
  load_and_authorize_resource

  def new
   #   @solddish= SoldDish.all
  end
end
