Rails.application.routes.draw do
	get 'homes/top'
	get 'homes/about'
	devise_for :users
	resources :users do
		resource :relationships, only: [:create, :destroy]
		get 'follows' => 'relationships#follower', as: 'follows'
		get 'followers' => 'relationships#followed', as: 'followers'
	end
	resources :blogs
	root "homes#top"

	resources :messages, :only => [:create]
	resources :rooms, :only => [:create, :show, :index]
end
