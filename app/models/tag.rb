class Tag < ApplicationRecord
    has_many :content_tags, dependent: :destroy
    has_many :posts, through: :content_tags
end
