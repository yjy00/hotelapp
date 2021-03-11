Rails.application.routes.draw do
  root to: 'foods#index'

  resources :mainmenus,         only: :index
  resources :foods
  resources :beverages
  resources :equipments
  resources :other_functions,    only: :index
  resources :chats,              only: [:index, :create]
  resources :daily_handovers,    only: [:index, :new, :create, :edit, :update]
  resources :regular_guests,     only: [:index, :new, :create, :edit, :update, :destroy]
  resources :menus,              only: [:index, :new, :create, :edit, :update, :destroy]
  resources :orders,             only: :index
  resources :kitchen_orders,     only: :index

end
