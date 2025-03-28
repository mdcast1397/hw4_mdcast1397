Rails.application.routes.draw do
  root "sessions#new"

  get "/signup", to: "users#new"
  resources :users, only: [:new, :create]

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :places do
    resources :entries
  end
end


