class Page < ApplicationRecord
    has_many :content_tags, dependent: :destroy
    has_many :tags, through: :content_tags

    validates :module_name, :content_ids, :page_name, :page_description, :tags, presence: true
end
