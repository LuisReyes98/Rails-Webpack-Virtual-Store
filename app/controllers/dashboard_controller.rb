class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def orders
    @current_site = 'dashboard'

    orders = Order.all()
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
    
  end
  
  def reports

    @current_site = 'dashboard'
    from = params["date_from"]
    
    if from != "" and from
      date_from = Date.parse(from)
      @orders = Order.where("created_at >= ?", date_from)
    else
      @orders = Order.all()

    end

    respond_to do |format|
      format.html
      format.csv { send_data @orders.to_csv }
    end

  end
  
    

end