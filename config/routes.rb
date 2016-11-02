Rails.application.routes.draw do
  devise_for :users
  get "/" => "home#index"

  get "/movie/:id" => "movie#info"
end
