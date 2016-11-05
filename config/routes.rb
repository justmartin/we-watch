Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: 'registrations' }

  root "home#index"

  get "/search" => "search#action"

  post '/search-by-title' => "search#search_by_title"

  post '/search-by-actor' => "search#search_by_actor"

  post '/search-by-director' => "search#search_by_director"

  post "/search-by-genre" => "search#search_by_genre"

  get "/movies/:id" => "movie#show", as: "movie_show"

  get '/favorite-movies/add' => "favorite_movies#perform"

  post '/favorite-movies/add' => "favorite_movies#add"

  get '/watched-movies/add' => "watched_movies#perform"

  post '/watched-movies/add' => "watched_movies#add"

end
