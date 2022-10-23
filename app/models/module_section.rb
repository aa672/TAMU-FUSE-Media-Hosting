class ModuleSection < ApplicationRecord

    has_many :pages

    validates :module_name, presence: true
end
