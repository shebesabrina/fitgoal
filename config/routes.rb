Rails.application.routes.draw do
  root 'dashboard#index'

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get :feed, to: 'feed#index', as: 'feed'
  get :buddies, to: 'buddies#index', as: 'buddies'
  get :hangout, to: 'hangout#index', as: 'hangout'
  # get :hangout, to: 'hangout#show'
  resources :goals, only: [:index, :show, :new, :update]
  resources :plans, only: [:index, :show]

end
