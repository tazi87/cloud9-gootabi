Rails.application.routes.draw do
  devise_for :users
  root 'plans#index'
  resources :plans
  resources :reviews
  
  

  resources :users, only: [:index]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
