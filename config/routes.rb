Rails.application.routes.draw do
  get 'dashboard/index'

  resources :events
  resources :clients
  devise_for :users

  root "dashboard#index"


end
