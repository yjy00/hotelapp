Rails.application.routes.draw do
  root to: 'foods#index'

  resources :mainmenus,         only: :index
  resources :foods
  resources :beverages
  resources :equipments
  resources :other_functions,    only: :index
  resources :chats,              only: [:index, :create]
  resources :daily_handovers,    only: [:index, :new, :create, :edit, :update]
  resources :regular_guests
  
end
