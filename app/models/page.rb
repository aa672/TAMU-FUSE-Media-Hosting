class Page < ApplicationRecord
    has_many :content_tags, dependent: :destroy
    has_many :tags, through: :content_tags

    validates :page_name, presence: true
end
