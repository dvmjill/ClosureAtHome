json.extract! vet_user, :id, :first_name, :last_name, :address, :city, :state, :zip, :email, :phone, :crematory_name, :created_at, :updated_at
json.url vet_user_url(vet_user, format: :json)
