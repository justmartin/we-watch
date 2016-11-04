Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }

  get "/" => "home#index"

  get "/movie" => "movie#info"

  get "/search" => "search#action"

  post '/search-by-title' => "search#search_by_title"

  post '/search-by-actor' => "search#search_by_actor"

  post '/search-by-director' => "search#search_by_director"

  get "/movies/:id" => "movie#show", as: "movie_show"

end
