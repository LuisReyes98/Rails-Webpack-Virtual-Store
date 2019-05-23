class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def orders
    @current_site = 'dashboard'

    orders = Order.all
    @orders = []
    for order in orders do
      user = User.find(order.user_id)
      @orders.append({
        cost: order.cost,
        items_number: order.items_number,
        due_date: "Nan",
        created_at: order.created_at,
        creator: user.email,
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