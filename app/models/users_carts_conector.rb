class UsersCartsConector < ApplicationRecord
  # Chequear siempre antes de crear si ya existe el producto para así sumarle en cantidad
  belongs_to :user
  belongs_to :product

end
