User.destroy_all
Category.destroy_all
Company.destroy_all
Offer.destroy_all

User.create(name: "admin", username: "admin", email: "admin@example.com", password: "123456", password_confirmation: "123456", admin: "true", premium:"true")

categories = ["Entertainment", "Resturant", "Fashion Retailers", "Health Care"]

categories.each do |c|
  Category.create(name: c)
end

entertaiment = Category.find_by(name: "Entertainment")
resturant = Category.find_by(name: "Resturant")
fashion = Category.find_by(name: "Fashion Retailers")
health = Category.find_by(name: "Health Care")
