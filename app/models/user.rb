class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_and_belongs_to_many :offers
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def is_admin
    user_type == "Admin"
  end

  def is_customer
    user_type == "Customer"
  end
end
