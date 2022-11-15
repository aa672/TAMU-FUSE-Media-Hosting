# Replace the 'config_from_url' string value below with your
# account's credentials, available from your Cloudinary console.
# =====================================================

require 'cloudinary'

Cloudinary.config_from_url("cloudinary://787589888881851:iXtfxZ_qOU2IdyybmEtC0LwynzU@dcdjdg8gl")
Cloudinary.config do |config|
  config.secure = true
end