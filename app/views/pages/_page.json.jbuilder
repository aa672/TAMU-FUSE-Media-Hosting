json.extract! page, :id, :page_id, :module_id, :content_ids, :page_name, :page_description, :created_at, :updated_at
json.url page_url(page, format: :json)
