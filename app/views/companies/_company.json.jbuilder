json.extract! company, :id, :name, :identification, :address, :phone, :email, :country, :state, :city, :comments, :created_at, :updated_at
json.url company_url(company, format: :json)
