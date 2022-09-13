json.extract! product, :id, :name, :details, :price, :comments, :company_id, :created_at, :updated_at
json.url product_url(product, format: :json)
