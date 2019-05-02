class Product < ApplicationRecord    
    # The product image
    has_one_attached :image

end