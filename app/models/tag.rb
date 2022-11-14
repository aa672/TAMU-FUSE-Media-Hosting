class Tag < ApplicationRecord
    has_many :content_tags, dependent: :destroy
    has_many :pages, through: :content_tag
    validates :tag_name, presence: true
end
