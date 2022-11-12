class Page < ApplicationRecord
    validates :module_name, :content_ids, :page_name, :page_description, presence: true
end
