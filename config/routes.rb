Rails.application.routes.draw do
  resources :houses, only: [:index]
  resources :inspections, only: [:index, :create]

  # check this out in `rails routes`
  post "houses/search", to: "houses#search"

  root to: "houses#index"
end
