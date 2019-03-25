class HomeController < ApplicationController
  def index
    @current_site = 'home'

    @products = []

    for i in 0..10 do
      @products.append({
        name: 'Camisa',
        image_src: ActionController::Base.helpers.asset_pack_path('assets/images/shirt.jpg'),
      })
    end

    @groups = [
      {
        name: 'Electronicos',
        subgroups: [
          {
            name: 'laptop'
          },
          {
            name: 'Telefono'
          },
        ]
      },
      {
        name: 'Ropa',
        subgroups: [
          {
            name: 'Gorra'
          },
          {
            name: 'Camisa'
          },
        ]
      }
    ]
    
  end
  
  def cart
    
  end
  

end