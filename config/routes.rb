Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  root 'home#index'
  
  get 'cart', to: 'home#cart'

  get 'dashboard/orders/', to: 'dashboard#orders'
  get 'dashboard/products/', to: 'dashboard#products'
  get 'dashboard/create_product/', to: 'dashboard#create_product'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
