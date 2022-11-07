class Page < ApplicationRecord



    validates :module_name, :content_id, :page_name, :page_description, presence: true
end
