require 'file_size_validator'

class Post < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  belongs_to :user
  has_many :comments

  validates_presence_of :user_id
  validate :body_x_and_or_image_url
  validates :image_url, :file_size => { :maximum => 10.megabytes.to_i  }


  def body_x_and_or_image_url
    unless self.body.present? && self.image_url.present?
      errors.add :body, :body_x_and_or_image_url
      errors.add :image_url, :body_x_and_or_image_url
    end
  end
end
