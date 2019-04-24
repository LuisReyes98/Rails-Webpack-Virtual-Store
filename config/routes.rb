Rails.application.routes.draw do
  resources :carts
  resources :orders
  resources :products
  # devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  # post 'users/signup', to: 'users#signup'

  root 'home#index'
  
  get 'cart/', to: 'home#cart'

  # Products
  get 'dashboard/products/', to: 'products#index'

  get 'dashboard/orders/', to: 'dashboard#orders'
  


  get 'dashboard/create_product/', to: 'dashboard#create_product'

  get 'dashboard/reports/', to: 'dashboard#reports'
  get 'dashboard/users/', to: 'dashboard#users'
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
