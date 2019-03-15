Rails.application.routes.draw do
  # devise_for :users, :views
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'sign_up' }
  get 'home/index'

  root to: 'home#index'


  resources :posts, only: [:new, :create, :show]

  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
