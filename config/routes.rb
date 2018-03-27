Rails.application.routes.draw do

  
  resources :orderrrs

  devise_for :users

  get 'welcome/index'

  resources :categories do
   	resources :products
  end

  root 'categories#index'
  
  resource :carts, only: [:show]

  resources :carts

  resources :order_items
  
end
