class Page < ApplicationRecord



    validates :page_id, :module_id, :content_id, :page_name, :page_description, presence: true
end
