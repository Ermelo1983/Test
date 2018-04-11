class Post < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  belongs_to :user
  has_many :comments

  validates_presence_of :user_id
  validate :body_xor_image_url


  def body_xor_image_url
    unless self.body.present? ^ self.image_url.present?
      errors.add :body, :body_xor_image_url
      errors.add :image_url, :body_xor_image_url
    end
  end
end
