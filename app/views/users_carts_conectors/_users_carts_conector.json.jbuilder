json.extract! users_carts_conector, :id, :user_id, :product_id, :created_at, :updated_at
json.url users_carts_conector_url(users_carts_conector, format: :json)
