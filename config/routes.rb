Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }

  get "/" => "home#index"

  get "/movie" => "movie#info"

  get "/search" => "search#action"

  post '/search' => "search#perform"

  get "/movies/:id" => "movie#show", as: "movie_show"

end
