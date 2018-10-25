Rails.application.routes.draw do
  resources :payment_methods
  resources :tickets
  get 'dashboard/index'

  resources :events
  resources :clients
  devise_for :users

  root "dashboard#index"


end
