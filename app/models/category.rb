class Category < ApplicationRecord
  has_many :offers
  has_many :companies

  def list_categories
    # byebug
    self.name
  end
end
