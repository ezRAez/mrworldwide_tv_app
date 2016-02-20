Rails.application.routes.draw do
  root "videos#index"

  resources :videos, except: [:show]

  resources :users, only: [:new, :create]

  resource :session, only: [:new, :create]
  get "/login" => "sessions#new"
end
