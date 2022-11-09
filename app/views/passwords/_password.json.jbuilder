json.extract! password, :id, :password_id, :password_name, :password, :created_at, :updated_at
json.url password_url(password, format: :json)
