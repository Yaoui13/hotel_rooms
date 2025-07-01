Rails.application.routes.draw do
  root to: 'welcome#index'
  post 'welcome', to: 'welcome#create', as: 'welcome'

  resources :clients, only: [:index, :show, :new, :create]

  resources :rooms, only: [:index, :show] do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [:index, :show, :edit, :update, :destroy]
end

