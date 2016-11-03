Rails.application.routes.draw do
<<<<<<< HEAD
  
  devise_for :users
  
=======
  devise_for :users, controllers: { registrations: 'registrations' }
>>>>>>> master
  get "/" => "home#index"

  get "/movie" => "movie#info"

  get "/search" => "search#action"

  post '/search' => "search#perform"


end
