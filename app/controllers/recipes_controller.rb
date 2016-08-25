class RecipesController < ApplicationController




























  get '/recipes/:id/edit' do
    @recipe = Recipe.find(params[:id])
      erb :'recipes/edit'
  end

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
