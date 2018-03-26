Rails.application.routes.draw do

  # get 'orderrrs/index'

  # get 'orderrrs/show'

  # get 'orderrrs/new'
  resources :orderrrs

  # get 'carttt/show'

  get 'carttts/:id' => "carttts#show", as: "carttt"
   delete 'carttts/:id' => "carttts#destroy"

 post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
 post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
 post 'line_items' => "line_items#create"
 get 'line_items/:id' => "line_items#show", as: "line_item"
 delete 'line_items/:id' => "line_items#destroy"



  devise_for :users

  get 'welcome/index'

  #root 'welcome#index'
  resources :categories do
   	resources :products
  end
  root 'categories#index'
  
  resource :carts, only: [:show]

  resources :order_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
