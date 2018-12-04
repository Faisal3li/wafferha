class Company < ApplicationRecord
  has_many :offers, dependent: :destroy
  belongs_to :category
  mount_uploader :image, ImageUploader
  geocoded_by :address
  after_validation :geocode
end
