json.extract! content, :id, :content_id, :content_type, :content_storage_link, :created_at, :updated_at
json.url content_url(content, format: :json)
