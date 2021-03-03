Rails.application.routes.draw do
  root to: 'mainmenus#index'

  resources :mainmenus,         only: :index
  resources :foods
  resources :beverages
  resources :equipments
end
