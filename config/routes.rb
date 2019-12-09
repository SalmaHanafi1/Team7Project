Rails.application.routes.draw do
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'users/new'
  get 'users/create'
  get 'login/index'
  get 'maps/index'
  get 'welcome/index'
  get 'mainpage/index'
  
<<<<<<< HEAD
  resources :trails
  resources :users, only: [:new, :create]
  
  get 'login', to: 'sessions#new'
  
  post 'login' , to: 'sessions#create'
  
  get 'welcome', to: 'sessions#welcome'
  
  
 
=======
  resources :trails do
    resources :feed_backs
  end
>>>>>>> efc9b31e027fc4123f5a3bc0b62a4f95512da547
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
