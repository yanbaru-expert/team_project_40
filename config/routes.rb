Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "texts#index"
  get "texts/questions" => "texts#questions"
  resources :texts, only: [:index, :show]
end
