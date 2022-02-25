Rails.application.routes.draw do
  
  resources :comments, path: 'moderations'

  resources :posts do
    resources :comments, module: :posts
  end
  
  resources :cars do
    resources :comments, module: :cars
    patch 'add_observation', to: "cars#add_observation"
  end
  
  devise_for :users, :path_prefix => 'devise'
  resources :users
  
  resources :audities
  
  get 'admin', to: "menu#admin"
  get 'supervisor', to: "menu#supervisor"
  get 'collaborator', to: "menu#collaborator"
  
  root to: 'home#index'
  
end
