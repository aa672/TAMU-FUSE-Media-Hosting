class Page < ApplicationRecord
    validates :module_id, :content_ids, :page_name, :page_description, presence: true
end
