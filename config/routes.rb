Rails.application.routes.draw do
  root to: 'mainmenus#index'

  resources :mainmenus,         only: :index
  resources :halls,             only: :index
  resources :hall_managements
  resources :kitchens

end
