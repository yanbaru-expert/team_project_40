Rails.application.routes.draw do
  root "texts#index"
  resources :texts, only: [:index, :show]
end
