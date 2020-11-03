Rails.application.routes.draw do
  root to: 'books#index'
  devise_for :users
  resources :books, only: [:index, :new, :create]
  resources :users, only: [:index, :show, :edit, :update]
end
