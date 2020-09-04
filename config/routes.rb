Rails.application.routes.draw do
  root "at_bats#index"

  resources :games, only: [:create, :new]
  
end
