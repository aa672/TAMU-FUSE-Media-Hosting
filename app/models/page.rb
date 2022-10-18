class Page < ApplicationRecord
    validates :page_id, :module_id, :content_id, :page_name, :page_description, presence: true
    has_many :content_tags, dependent: :destroy
    has_many :tags, through: :content_tags
end
