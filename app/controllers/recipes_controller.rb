class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end


  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end


  private
  def recipe_params
    params.require(:recipe).permit(:title, :description)
  end




























  get '/recipes/:id/edit' do
    @recipe = Recipe.find(params[:id])
      erb :'recipes/edit'
  end

>>>>>>> 4ed0c8c6274fcc599e5325cee381e8576fee253f
end

 put '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.assign_attributes(params[:rest])
      if @recipe.save
        redirect '/recipes'
     else
        erb :'recipes/edit'
     end
 end
