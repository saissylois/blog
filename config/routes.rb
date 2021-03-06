Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'articles/index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources:articles do
  	resources :comments
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'articles#index'
end
