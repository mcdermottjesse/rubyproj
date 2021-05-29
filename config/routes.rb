Rails.application.routes.draw do
  resources :cars

  get '/search_brand' => 'search#brand_index'
  get '/search_model' => 'search#model_index'
  get '/search_year' => 'search#year_index'
  get '/search_price' => 'search#price_index'
  get '/search_colour' => 'search#colour_index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
