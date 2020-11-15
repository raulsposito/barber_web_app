Rails.application.routes.draw do
  root 'static#home'
  get '/bookings/next_week'

  resources :comments
  resources :barbers
  resources :bookings do 
    resources :comments, only: [:new, :create, :index]
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  delete '/logout' => 'sessions#destroy'

  get '/auth/google_oauth2/callback' => 'sessions#omniauth' 
end
