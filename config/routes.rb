# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'foods#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  devise_scope :user do
    get 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  resources :mainmenus,          only: :index
  resources :foods,              only: :index
  resources :beverages,          only: :index
  resources :equipments,         only: :index
  resources :other_functions,    only: :index
  resources :chats,              only: %i[index create]
  resources :daily_handovers,    only: %i[index new create edit update]
  resources :regular_guests,     only: %i[index new create edit update destroy]
  resources :menus,              only: %i[index new create edit update destroy]
  resources :orders,             only: :index
  resources :kitchen_orders,     only: :index
  resources :people_managements, only: %i[index new create edit update]
  resources :items
end
