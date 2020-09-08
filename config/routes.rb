Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about'
  devise_for :users
  resources :users
  resources :blogs
  resources :relationships
  root "homes#top"
<<<<<<< HEAD
  end
=======
end
>>>>>>> a6f97cf559db74f324d0664171ea5a5194d8c456
