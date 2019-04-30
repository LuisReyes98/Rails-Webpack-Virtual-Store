class Product < ApplicationRecord
    has_many :associations
    has_many :orders, through: :associations
    
    # The product image
    has_one_attached :image
end