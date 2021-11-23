Rails.application.routes.draw do
  get 'users/dashboard'
  devise_for :counselors
  devise_for :users
  root to: 'pages#home'
  # bookings #index #new #create #update
  # users #dashboard
  # counselors #dashboard get '/counselor'
  # messages #create
  resources :bookings, only: [:index, :show, :new, :create, :update]
  get '/dashboard', to: 'users#dashboard', as: :user_dashboard_path
  get '/counselor', to: 'counselors#dashboard', as: :counselor_dashboard_path
  resources :messages, only: [:create]
end
