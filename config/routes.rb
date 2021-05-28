Rails.application.routes.draw do
  resources :rentals
  resources :hosts, only: [:create]

  post "/login", to: "hosts#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
