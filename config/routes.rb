Rails.application.routes.draw do
  resources :topics
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :writings
  resources :searches

  root 'writings#index'
end
