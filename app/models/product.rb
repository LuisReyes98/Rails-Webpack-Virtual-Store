class Product < ApplicationRecord    
    # The product image
    # :name, :category, :stock, :cost, :image
    has_one_attached :image
    validates :name, presence: true
    validates :stock, presence: true
    validates :cost, presence: true
    

end