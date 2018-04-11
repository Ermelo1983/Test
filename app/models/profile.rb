class Profile < ApplicationRecord
  mount_uploader :profile_picture_url, ImageUploader

  belongs_to :user

  validates_presence_of :date_of_birth
  validates_presence_of :gender
  validates_presence_of :street
  validates_presence_of :house_number
  validates_presence_of :zip_or_postal_code
  validates_presence_of :town
  validates_presence_of :country
  validates_presence_of :language
  validates_presence_of :profile_picture_url


  GenderTypes = ["gender_neutral","Male", "Female"]

end
