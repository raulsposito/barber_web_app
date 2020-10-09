Rails.application.routes.draw do
  root 'static#home'
  resources :comments
  resources :barbers
  resources :bookings
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
end
