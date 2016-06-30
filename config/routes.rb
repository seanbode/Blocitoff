Rails.application.routes.draw do
  devise_for :users

  root "users#show"

  get "items/index" 

  resources :users, only: [:show]
end
