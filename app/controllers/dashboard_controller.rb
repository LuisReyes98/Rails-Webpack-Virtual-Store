class DashboardController < ApplicationController
  
  def orders
    @current_site = 'dashboard'

    @orders = []
    
    for i in 0..3 do
      @orders.append({
        cuantity: 12,
        cost: 300.0,
        payed: true ,
        expiration_date: '14/12/19',
        payment_date: '01/12/19',
        creator: 'Luis',        
      })
    end

  end

  def products
    @current_site = 'dashboard'

    @products = []

    for i in 0..3 do
      @products.append({
        name: 'Camisa',
        image_src: ActionController::Base.helpers.asset_pack_path('assets/images/shirt.jpg'),
      })
    end
    
  end

  def create_product
    @current_site = 'dashboard'
    
  end
  
  
  
  
end