json.extract! person, :id, :name, :bio, :password, :registration_number, :created_at, :updated_at
json.url person_url(person, format: :json)
