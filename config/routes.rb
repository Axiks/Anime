Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  resources :comments
  resources :topics
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :writings
  resources :searches
  resources :users, only: [:show]

  root 'writings#index'
end
