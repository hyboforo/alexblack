class Product < ApplicationRecord
mount_uploader :image1, ImageUploader
mount_uploader :image2, ImageUploader
mount_uploader :image3, ImageUploader
validates :title, :description,:image1, :image2, :image3, presence: true
validates :price, numericality:{greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true
validates :image_url, allow_blank: true, format: {
with: %r{\.(gif|jpg|png)\Z}i,
message: 'must be a URL for GIF, JPG or PNG image.'
}
end
