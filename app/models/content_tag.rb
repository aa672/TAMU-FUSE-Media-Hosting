class ContentTag < ApplicationRecord
    belongs_to :tag
    belongs_to :page
end
