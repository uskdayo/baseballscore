Rails.application.routes.draw do
  devise_for :users

  root "at_bats#index"

  resources :games, only: [:create, :new]
  
end
