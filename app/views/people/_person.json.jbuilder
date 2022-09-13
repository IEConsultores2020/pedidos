json.extract! person, :id, :name, :address, :phone, :email, :whatsapp, :works, :country, :state, :city, :comments, :created_at, :updated_at
json.url person_url(person, format: :json)
