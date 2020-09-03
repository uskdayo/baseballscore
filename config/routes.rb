Rails.application.routes.draw do
  get 'at_bats/index'

  root "at_bats#index"
end
