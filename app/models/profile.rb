class Profile < ApplicationRecord
  mount_uploader :profile_picture_url, ImageUploader

  belongs_to :user
end
