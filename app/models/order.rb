class Order < ApplicationRecord
  has_many :users_carts_conectors
  belongs_to :user

  def self.to_csv
    attributes = %w{ id cost creator_email user_id ammount_of_items created_at products... costs... }
    CSV.generate(headers: true) do |csv| 
      csv << attributes
      
      all.each do |order|
        main_data = [ 
          order.id.to_s , #id 
          order.cost.to_s , #total cost
          order.user.email.to_s ,
          order.user_id.to_s ,
          order.items_number.to_s ,
          order.created_at.to_s ,
        ]
        inner_products = order.users_carts_conectors.map{|el|  [el.product.name.to_s , el.product.cost.to_s ] }
        inner_products.each do |prod|
          main_data.append(prod[0])
          main_data.append(prod[1])
        end
        csv << main_data
      end            
    end
  end  

end
