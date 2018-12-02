class Company < ApplicationRecord
  has_many :offers
  belongs_to :category
  mount_uploader :image, ImageUploader
end
