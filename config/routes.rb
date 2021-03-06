Rails.application.routes.draw do
  resources :reminders
  root 'home#index'

  get '/auth/strava', as: :strava_login
  get '/auth/strava/callback', to: 'sessions#create'

  get 'logout', to: 'sessions#destroy'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  resources :users, only: [:create, :new, :destroy]

  get '/dashboard', to: 'dashboard#show'

  # get :feed, to: 'feed#index', as: 'feed'
  # get :buddies, to: 'buddies#index', as: 'buddies'
  # get :hangout, to: 'hangout#index', as: 'hangout'
  resources :record
  resources :user_plans, only: [:index, :show, :new, :update, :create]


end
