json.extract! mysite, :id, :name, :website, :created_at, :updated_at
json.url mysite_url(mysite, format: :json)
