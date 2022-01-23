Rails.application.routes.draw do
  resources :houses, only: [:index]
  resources :inspections, only: [:create, :new]

  # check this out in `rails routes`
  post "houses/search", to: "houses#search"

  get "/login", to: "sessions#login"
  get "/signup", to: "sessions#signup"

  post "/signup", to: "sessions#create"
  post "/login", to: "sessions#authenticate"

  post "/logout", to: "sessions#destroy"

  # get "/dashboard", to: "houses#dashboard"

  root to: "houses#index"
end
