Rails.application.routes.draw do
  resources :movies
  resources :directors

  get :search, controller: :main
  root to: "main#index"
end
