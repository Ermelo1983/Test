class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates_presence_of :post_id
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
