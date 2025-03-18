Rails.application.routes.draw do
  root "sessions#new"

  resources :users, only: [:new, :create]
  get "/signup", to: "users#new", as: "signup"

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"

  resources :places do
    resources :entries
  end
end

