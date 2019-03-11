Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  root to: 'home#index'


  resources :posts, only: [:new, :create]
  
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
