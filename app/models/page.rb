class Page < ApplicationRecord



    validates :module_id, :content_id, :page_name, :page_description, presence: true
end
