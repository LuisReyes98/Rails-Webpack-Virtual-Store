class HomeController < ApplicationController
  
  def index
    @current_site = 'home'

    @products = Product.all()

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
        temp_product = Product.find(product.product_id)

        @products.append(          
          {
            product_id: product.product_id,
            name: temp_product.name,
            cost: temp_product.cost,
            group: Group.find(temp_product.group_id).name,
            category: Group.find(temp_product.group_id).name,
            ammount: 1,          
          })              
      end
    end
  end
  

end