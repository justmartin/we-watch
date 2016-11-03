Rails.application.routes.draw do
  
  devise_for :users
  
  get "/" => "home#index"

  get "/movie" => "movie#info"

  get "/search" => "search#action"

  post '/search' => "search#perform"


end
