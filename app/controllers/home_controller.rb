class HomeController < ApplicationController
  
  def index
    @current_site = 'home'
    @users_carts_conector = UsersCartsConector.new

    all_products = Product.all()
    
    @products = []
    for pro in all_products do
      @products.append({
        name: pro.name,
        id: pro.id,
        image_src: url_for(pro.image),

        add_to_cart_link: user_signed_in? ? ( helpers.button_to( users_carts_conectors_path( user_id: current_user.id, product_id: pro.id,amount: 1), method: :post , :class=>" btn btn-success btn-sm mx-1 add_to_cart")do
          '<i class="mdi mx-1 mdi-cart-plus" ></i> Añadir a Carrito'.html_safe
        end) : '<button class="btn btn-success btn-sm mx-1 add_to_cart disabled"> <i class="mdi mx-1 mdi-cart-plus" ></i> Añadir a Carrito </button>'.html_safe
      })
    end


    groups = Group.all()
    
    @groups = []

    groups.each do  |group| 
      @groups.append({ name: group.name  ,categories: Category.where(:group_id => group.id )})      
    end

  end
  
  def register_order
    if user_signed_in?
      # :cost, :items_number,:due_date
      userProducts = UsersCartsConector.where(:user_id => current_user.id, :in_order => false )
      if userProducts.length >= 1
        @order = Order.create(user_id: params["user_id"])
        # @order.due_date = @order.created_at
  
        total_cost = 0
        items = 0
        for pro in userProducts do
          product_data = Product.find(pro.product_id)
          items += 1
          total_cost += product_data.cost
  
          pro.in_order = true
          pro.order_id = @order.id
          pro.save
        end
        @order.cost = total_cost
        @order.items_number = items
  
        respond_to do |format|
          if @order.save
            format.html { redirect_to cart_path, notice: 'Order was successfully created.' }
            format.json { render cart_path, status: :created, location: @order }
          else
            format.html { redirect_to cart_path }
            format.json { render json: @order.errors, status: :unprocessable_entity }
          end
        end
      else
        redirect_to cart_path    
      end
    end
  end
  

  def cart
    @current_site = 'cart'
    @products = []

    # Check how to show same products together
    if user_signed_in?
      userProducts = UsersCartsConector.where(:user_id => current_user.id)

      for product in userProducts do
        product_data = Product.find(product.product_id)

        @products.append(          
          {
            product_id: product.product_id,
            name: product_data.name,
            cost: product_data.cost,
            group: Group.find(product_data.group_id).name,
            category: Category.find(product_data.category_id).name,
            amount: product.amount,   
            image_src: url_for(product_data.image),  
            id:  product.id,
            destroy_link: (helpers.link_to 'Eliminar', product, data: {}, method: :delete, class:" btn btn-danger delete_cart"),
            in_order: product.in_order,
            order_due: product.in_order ? "Nan" : "Nan",
            order_id: product.in_order ? product.order_id : "Nan",

          })         
          
        
      end
      @register_order_button = helpers.button_to("Registrar Orden ", register_order_path( user_id: current_user.id), method: :post, id: "register_cart_order",class:"btn btn-success btn-block" )
    end
    
  end

  def product
    product = Product.find(params[:id])
    @product = {
      name: product.name,
      id: product.id,
      image_src: url_for(product.image),
      add_to_cart_link: user_signed_in? ? ( helpers.button_to( users_carts_conectors_path( user_id: current_user.id, product_id: product.id,amount: 1), method: :post , :class=>" btn btn-success btn-block mx-1 add_to_cart")do
          '<i class="mdi mx-1 mdi-cart-plus" ></i> Añadir a Carrito'.html_safe
        end) : '<button class="btn btn-success btn-block mx-1 add_to_cart disabled"> <i class="mdi mx-1 mdi-cart-plus" ></i> Añadir a Carrito </button>'.html_safe
    }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.permit(:cost, :items_number,:due_date)
    end
end