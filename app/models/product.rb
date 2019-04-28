class Product < ApplicationRecord
    has_many :associations
    has_many :orders, through: :associations
end