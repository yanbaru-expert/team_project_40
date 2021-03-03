Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "texts#index"
  namespace :texts do
    resources :searches, only: :index, defaults: { format: :json }
  end
  resources :texts do
    resource :reads, only: [:create, :destroy]
  end
  resources :challenges, only: [:index, :show]
  resources :texts, only: [:index, :show, :new]
  resources :movies, only: [:index]
  resources :lines, only: [:index, :show]
end
