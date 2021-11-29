Rails.application.routes.draw do
  devise_for :counselors
  devise_for :users
  root to: 'pages#home'
  # bookings #index #new #create #update
  # users #dashboard
  # counselors #dashboard get '/counselor'
  # messages #create
  resources :bookings, only: [:index, :show, :new, :create, :update] do
    resources :messages, only: [:create]
  end
  get '/dashboard', to: 'users#dashboard', as: :user_dashboard
  get '/users/:id', to: 'users#show', as: :user
  get 'counselors/dashboard', to: 'counselors#dashboard', as: :counselor_dashboard
  get 'counselors/bookings', to: 'counselors#bookings', as: :counselor_bookings
end
