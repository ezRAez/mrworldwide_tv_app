Rails.application.routes.draw do
  root "videos#index"
  resources :videos, only: [:index, :new, :create]
end
