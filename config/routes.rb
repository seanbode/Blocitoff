Rails.application.routes.draw do
  devise_for :users

  root "users#show"

  resources :items

  resources :users, only: [:show]
end
