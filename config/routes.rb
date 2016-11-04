Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }

  get "/home" => "home#index"

  get "/movie" => "movie#info"

  get "/search" => "search#action"

  post '/search-by-title' => "search#search_by_title"

  post '/search-by-actor' => "search#search_by_actor"

  post '/search-by-director' => "search#search_by_director"

  post "/genre" => "search#genre"

  get "/movies/:id" => "movie#show", as: "movie_show"

  get '/favorite-movies/add' => "favorite_movies#perform"

  post '/favorite-movies/add' => "favorite_movies#add"

end
