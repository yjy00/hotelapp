Rails.application.routes.draw do
  root to: 'mainmenus#index'

  resources :mainmenus, only: :index


end
