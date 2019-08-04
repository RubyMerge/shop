json.extract! order, :id, :count, :name, :last_name, :email, :phone, :city, :stock, :created_at, :updated_at
json.url order_url(order, format: :json)
