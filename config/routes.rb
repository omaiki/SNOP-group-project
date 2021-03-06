Rails.application.routes.draw do
  resources :users, :recipes
  root 'welcome#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  get '/users' => 'users#create'

  get '/sold_dishes' => 'sold_dishes#new'
  delete '/sold_dishes' => 'sold_dishes#destroy'
end
