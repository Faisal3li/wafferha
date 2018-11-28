class Offer < ApplicationRecord
  belongs_to :company
  belongs_to :category
  # has_and_belongs_to_many :users
end
