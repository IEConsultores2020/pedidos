json.extract! order, :id, :scheduler, :quantity, :value, :total, :company_id, :people_id, :comments, :created_at, :updated_at
json.url order_url(order, format: :json)
