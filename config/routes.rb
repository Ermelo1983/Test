Rails.application.routes.draw do

  root to: 'dashboard#index'
  devise_for :users
  resources :users
  resources :posts
  resources :profiles
  resources :friendships

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
