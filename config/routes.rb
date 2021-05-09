Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "texts#index"
  resources :texts do
    resource :reads, only: [:create, :destroy]
  end
  resources :challenges, only: [:index, :show]
  resources :texts, only: [:index, :show, :new]
  resources :movies do
    resource :watched_movies, only: [:create, :destroy]
  end
  resources :movies, only: [:index]
  resources :questions, only: [:index, :show]
  resources :lines, only: [:index, :show]
  resources :mypages, only: [:index]
end
