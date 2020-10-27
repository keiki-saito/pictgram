Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  get 'pages/index'
  root 'pages#index'
  
  get 'pages/help'=>'pages#help'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :topics do
     resources :comments
  end
    
  
  get    'favorites/index'
  post   '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  
end
