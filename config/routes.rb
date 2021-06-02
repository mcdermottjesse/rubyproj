Rails.application.routes.draw do
  resources :cars

  get '/signup' => 'user#new'
  post '/user' => 'user#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create' 
  get '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
