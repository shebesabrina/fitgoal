Rails.application.routes.draw do
  root 'home#index'

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:create, :new, :show, :destroy]
  # get '/dashboard/:id', to: 'user#show', as: :dashboard
  get '/dashboard', to: 'dashboard#show'

  get :feed, to: 'feed#index', as: 'feed'
  get :buddies, to: 'buddies#index', as: 'buddies'
  get :hangout, to: 'hangout#index', as: 'hangout'
  # get :hangout, to: 'hangout#show'
  resources :goals, only: [:index, :show, :new, :update]
  resources :plans, only: [:index, :show]

end
