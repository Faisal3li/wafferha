# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
categories = ["Entertainment", "Resturant", "Fashion Retailers", "Health Care"]

categories.each do |c|
  Category.create(name: c)
end

Company.destroy_all
com1 = Company.create(name: "Zara", description: "Zara SA is a Spanish fast fashion retailer.")
com2 = Company.create(name: "Starbucks", description: "Coffeehouse chain. ")
com3 = Company.create(name: "Nino", description: "Nino Italian Restaurant")
com4 = Company.create(name: "Jolt", description: "CoffeeShop")

Offer.destroy_all
Offer.create(offer_Description: "buy one get one free ", expired_Date: "2018-11-28 14:23:21", start_Date: "2018-11-28 14:23:21", image: "http://fillmurray.com/200/200", coLocation: "Riyadh", view_Count: 2, coupon: "RA01", premium: false, used: false, category_id: 130, company_id: 104)
# Offer.create(offer_Description: "70% ", expired_Date: "01-08-2018", start_Date: "28-09-2018", image: "http://fillmurray.com/400/400", coLocation: "Jeddah", view_Count: 8, coupon: "QW122", premium: false, used: false)
# Offer.create(offer_Description: "30% ", expired_Date: "20-08-2018", start_Date: "20-08-2018", image: "http://fillmurray.com/200/200", coLocation: "Dammam", view_Count: 1, coupon: "CX233", premium: false, used: false)
# Offer.create(offer_Description: "buy 2 get one free", expired_Date: "20-08-2018", start_Date: "20-08-2018", image: "http://fillmurray.com/200/200", coLocation: "Riyadh", view_Count: 1, coupon: "CX233", premium: false, used: false)
