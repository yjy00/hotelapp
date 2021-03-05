Rails.application.routes.draw do
  root to: 'foods#index'

  resources :mainmenus,         only: :index
  resources :foods
  resources :beverages
  resources :equipments
end
