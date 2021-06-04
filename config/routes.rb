Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Standard resources
  resources :hosts, only: [:show, :create, :update]
  resources :rentals, only: [:index, :show, :create, :update, :destroy]
  resources :renters, only: [:show, :create, :update]
  resources :appointments, only: [:show, :create, :update, :destroy]

  # Custom routes
  post "/host/login", to: "hosts#login"

  post "/renter/login", to: "renters#login"
  # post "/renters/:id/reserve", to: "renters#reserve"

end
