class WelcomeController < ApplicationController
  def index
      @recipes = Recipe.avg_rating
  end
end

