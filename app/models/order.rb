class Order < ApplicationRecord
  has_many :users_carts_conectors
  belongs_to :user

  
end
