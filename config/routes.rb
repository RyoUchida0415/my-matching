Rails.application.routes.draw do

	get 'homes/top'
	get 'homes/about'

	devise_for :users, :controllers => {
   		:registrations => 'users/registrations',
   		#:sessions => 'users/sessions',
   		#:passwords => 'users/passwords'
  	}

	resources :users, only: [:index, :show, :edit, :update, :destroy] do
		resource :relationships, only: [:create, :destroy]
		get 'follows' => 'relationships#follower', as: 'follows'
		get 'followers' => 'relationships#followed', as: 'followers'
		get 'matches' => 'relationships#match', as: 'matches'
	end
	resources :blogs, :only => [:new, :create]
	root "homes#top"

	resources :messages, :only => [:create]
	resources :rooms, :only => [:create, :show, :index]
end
