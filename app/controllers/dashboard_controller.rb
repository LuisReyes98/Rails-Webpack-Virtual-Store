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


  def create_product
    @current_site = 'dashboard'
    
  end

  def users
    @current_site = 'dashboard'
    
    users = User.all
    
    @users = []

    for user in users do
      @users.append({
        email: user.email,
        access_level: user.access_level,
        username: user.username,
        delete_link: (helpers.link_to "Borrar", admin_destroy_user_path(user), method: :delete, data: { confirm: "Seguro de borrar #{user.email} ?" }),
      })
    end

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
  
  
  
  
  # private
  #   def set_current_user
  #     @this_user = current_user
  #   end
    

end