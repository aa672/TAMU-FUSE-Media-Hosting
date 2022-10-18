class Content < ApplicationRecord
    before_validation(on: :create) do
        self.session_token ||= SecureRandom.hex
    end
    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.   
    validates :title, :description, :content_id, :content_type, :content_storage_link, presence: true # Make sure the owner's name is present.
end
