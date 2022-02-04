Rails.application.routes.draw do
  resources :profiles
  resources :audities
  devise_for :users, :path_prefix => 'devise'
  
  resources :users
  resources :cars
  
  get 'admin', to: "menu#admin"
  get 'supervisor', to: "menu#supervisor"
  get 'collaborator', to: "menu#collaborator"
  
  root to: 'home#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
