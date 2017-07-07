Rails.application.routes.draw do

  root "home#index"

  resources :users, expect: [:show]
  resources :restaurants, expect: [:show]
  resources :categories, expect: [:show]
end
