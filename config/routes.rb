Rails.application.routes.draw do
  resources :houses, only: [:index, :new, :edit, :update, :create, :destroy] do
    resources :inspections, only: [:create, :new]
  end
  # resources :inspections, only: [:create, :new]

  # check this out in `rails routes`
  post "houses/search", to: "houses#search"

  get "dashboard", to: "houses#dashboard"

  get "login", to: "sessions#login"
  get "signup", to: "sessions#signup"

  post "sessions/signup", to: "sessions#create"
  post "sessions/login", to: "sessions#authenticate"

  post "logout", to: "sessions#destroy"

  # get "/dashboard", to: "houses#dashboard"

  root to: "houses#index"
end
