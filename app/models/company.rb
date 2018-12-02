class Company < ApplicationRecord
  has_many :offers
  belongs_to :category

end
