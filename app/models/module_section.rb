class ModuleSection < ApplicationRecord

    has_many :pages

    validates :module_name, :module_id, presence: true
end
