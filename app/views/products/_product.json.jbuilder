json.extract! product, :id, :name, :category, :stock, :cost, :created_at, :updated_at
json.url product_url(product, format: :json)
