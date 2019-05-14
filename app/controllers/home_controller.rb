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
        add_to_cart_link: ( helpers.button_to( users_carts_conectors_path( user_id: current_user.id, product_id: pro.id,amount: 1), method: :post , :class=>" btn btn-success btn-sm mx-1 add_to_cart")do
          '<i class="mdi mx-1 mdi-cart-plus" ></i> Añadir a Carrito'.html_safe
        end)
      })
    end


    groups = Group.all()
    
    @groups = []

    groups.each do  |group| 
      @groups.append({ name: group.name  ,categories: Category.where(:group_id => group.id )})      
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
            destroy_link: (helpers.link_to 'Eliminar', product, data: {}, method: :delete)
          })         
          
        
      end
    end
  end
  

end