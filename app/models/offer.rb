class Offer < ApplicationRecord
  has_one :place
  belongs_to :company
  has_many :views
  mount_uploader :image, ImageUploader
end
