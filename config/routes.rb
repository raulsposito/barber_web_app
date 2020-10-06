Rails.application.routes.draw do
  get 'static/home'
  resources :comments
  resources :barbers
  resources :bookings
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
