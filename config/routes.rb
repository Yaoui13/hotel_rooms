Rails.application.routes.draw do
  root to: 'welcome#index'

  post 'welcome', to: 'welcome#create', as: 'welcome'

  resources :clients, only: [:index, :show, :new, :create]
  resources :rooms, only: [:index, :show, :new, :create]
  resources :reservations, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end

