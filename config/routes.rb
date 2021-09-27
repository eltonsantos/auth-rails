Rails.application.routes.draw do
  devise_for :users
  
  resources :users
  resources :cars
  
  get 'admin', to: "home#admin"
  get 'supervisor', to: "home#supervisor"
  get 'collaborator', to: "home#collaborator"
  
  root to: 'home#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
