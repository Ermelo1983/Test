class ImageUploader < CarrierWave::Uploader::Base

    include Cloudinary::CarrierWave

    process :convert => 'jpg'
    process :tags => ['post_image']

    version :standard do
      process :eager => true
      process :resize_to_fill => [100, 150, :north]
    end

    version :thumbnail do
      process :eager => true
      resize_to_fit(50, 50)
    end
  end
