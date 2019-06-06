Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  resources :comments
  resources :topics

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :writings
  resources :searches
  #resources :images
  post '/writings/:id/add_image', to: 'writings#add_image', as: 'add_image'
  devise_for :users#, controllers: { registrations: 'users/registrations' }
  get 'users/:id', to: 'users#show', as: 'user_profile'
  root 'writings#index'
end
