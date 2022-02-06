Rails.application.routes.draw do
  
  resources :posts do
    resources :comments, module: :posts
  end
  
  resources :cars do
    resources :comments, module: :cars
  end
  
  devise_for :users, :path_prefix => 'devise'
  resources :users
  resources :audities
  
  get 'admin', to: "menu#admin"
  get 'supervisor', to: "menu#supervisor"
  get 'collaborator', to: "menu#collaborator"
  
  root to: 'home#index'
  
end
