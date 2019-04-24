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
        group: 'Ropa',
        category: 'Camisas',
        stock: 12,
        cost: 300.5,
      })
    end
    
  end

  def create_product
    @current_site = 'dashboard'
    
  end

  def users
    @current_site = 'dashboard'
    
    @users = User.all

    # for i in 0..4 do
    #   @users.append({
    #     username: 'Jose',
    #     access_level: 'admin',
    #   })
      
    # end
    
  end
  
  def reports
    @current_site = 'dashboard'
    
  end
  
  
  
  
  private
    def set_current_user
      @this_user = current_user
    end
    

end