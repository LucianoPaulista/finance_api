json.extract! address, :id, :street, :zip_code, :address_number, :complement, :state, :city, :neighborhood,  :created_at, :updated_at
json.url address_url(address, format: :json)
