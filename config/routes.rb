Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:show, :new, :create]
  
  resources :items, only: [:new]
  resources :ownerships, only: [:create, :destroy]
  
  resources :items, only: [:new]
#  resources :haves, only: [:create, :destroy], as: :have
end