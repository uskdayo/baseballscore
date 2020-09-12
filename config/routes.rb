Rails.application.routes.draw do
  devise_for :users

  root "games#index"
  resources :users, only: [:edit, :update]
  resources :games, only: [:index, :create, :new]
  resources :at_bats, only: :index
end
