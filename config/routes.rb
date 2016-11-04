Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: 'registrations' }

  root "home#index"

  get "/search" => "search#action"

  post '/search-by-title' => "search#search_by_title"

  post '/search-by-actor' => "search#search_by_actor"

  post '/search-by-director' => "search#search_by_director"

  post "/search-by-genre" => "search#search_by_genre"

  get "/movies/:id" => "movie#show", as: "movie_show"

end
