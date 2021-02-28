Rails.application.routes.draw do
  root to: 'mainmenus#index'

  resources :mainmenus, only: :index
  resources :halls, only: [:index, :new, :create, :edit]
  resources :bars, only: [:index, :new, :edit, :update]


end
