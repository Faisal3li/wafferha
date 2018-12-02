class Category < ApplicationRecord
  has_many :offers
  has_many :companies
end
