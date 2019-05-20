Rails.application.routes.draw do
  resources :users_carts_conectors
  # resources :orders
  resources :orders
  
  scope '/dashboard' do
    # Products
    resources :products    
  end

  
  # devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions' }
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  
  # post 'users/signup', to: 'users#signup'

  root 'home#index'

  post 'register_order', to: 'home#register_order'
  
  get 'cart/', to: 'home#cart'
  
  get 'display_product/:id', to: 'home#product'

  get 'dashboard/orders/', to: 'dashboard#orders'
  # get 'dashboard/create_product/', to: 'dashboard#create_product'
  get 'dashboard/reports/', to: 'dashboard#reports'
  get 'dashboard/users/', to: 'dashboard#users'
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
