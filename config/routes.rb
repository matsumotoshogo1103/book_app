Rails.application.routes.draw do
  root to: 'books#index'
  devise_for :users
  resources :books, only: :index
  resources :users, only: :index
end
