Rails.application.routes.draw do
  resources :houses, only: [:index]
  resources :inspections, only: [:index, :create]

  root to: "houses#index"
end
