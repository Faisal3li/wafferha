class Offer < ApplicationRecord
  belongs_to :company
  # belongs_to :category
  mount_uploader :image, ImageUploader
end
