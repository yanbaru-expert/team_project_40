Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "events#index"
  resources :challenges, only: [:index, :show]
  resources :texts, only: [:index, :show]
  resources :movies, only: [:index]
  resources :lines, only: [:index, :show]
end
