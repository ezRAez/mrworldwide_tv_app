Rails.application.routes.draw do
  root "videos#index"

  resources :videos, except: [:show] do
    resources :tags, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]

  resource :session, only: [:new, :create, :destroy]
  get "/login" => "sessions#new"
end
