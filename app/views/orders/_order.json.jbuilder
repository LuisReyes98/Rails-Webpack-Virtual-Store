json.extract! order, :id, :cuantity, :cost, :payed, :expiration_date, :payment_date, :user, :created_at, :updated_at
json.url order_url(order, format: :json)
