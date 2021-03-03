Rails.application.routes.draw do
  root to: 'mainmenus#index'

  resources :mainmenus,         only: :index
  resources :halls,             only: :index
  resources :hall_managements
  resources :kitchens, only: :index
  resources :kitchen_managements
  resources :foods
  resources :beverages
  resources :equipments
end
