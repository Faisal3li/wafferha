class Offer < ApplicationRecord
  has_one :place
  belongs_to :company
  # belongs_to :category
  mount_uploader :image, ImageUploader
end
