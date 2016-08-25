class RecipesController < ApplicationController

  def index
      @recipes = Recipe.all
      # Recipe.where(category_id: 1)

  end
end
