Rails.application.routes.draw do
  resources :galleries
  resources :comments
  resources :topics
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :writings
  resources :searches
  #resources :images
  post '/writings/:id/add_image', to: 'writings#add_image', as: 'add_image'
  root 'writings#index'
end
