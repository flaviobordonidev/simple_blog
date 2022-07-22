Rails.application.routes.draw do

  resources :logins, only: [:new, :create]
  resources :registrations, only: [:new, :create]
  resources :posts

  get 'logout', to: 'logins#delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
