Rails.application.routes.draw do
  root 'celebrations#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[show]

  resources :celebrations
end
