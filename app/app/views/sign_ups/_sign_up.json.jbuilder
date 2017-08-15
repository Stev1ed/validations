json.extract! sign_up, :id, :username, :password, :created_at, :updated_at
json.url sign_up_url(sign_up, format: :json)
