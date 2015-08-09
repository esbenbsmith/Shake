Rails.application.routes.draw do

  #users routes
  get "/signup", to: "users#new"
  get "/profile", to: "users#show"
  resources :user, only: [:create]

  #sessions routes
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  resources :sessions, only: [:create]

  #recipe routes 
  resources :posts

  root "posts#index", except: [:index]

end
