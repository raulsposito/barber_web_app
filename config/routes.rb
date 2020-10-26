Rails.application.routes.draw do
  root 'static#home'
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
end
