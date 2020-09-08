Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about'
  devise_for :users
  resources :users
  resources :blogs
  resources :relationships
  root "homes#top"
  end
