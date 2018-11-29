# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
categories = ["Entertainment", "Travel", "Resturant", "Fashion Retailers", "Health Care"]

categories.each do |c|
  Category.create(name: c)
end

#c1 = Company.create
o1 = Offers.create({offer_Description: "25% discount on all sizes of Cinnapacks from Cinnabon for SAR 5 only. Valid at over 100 branches across KSA",
start_Date:"2/3/2018", expired_Date:"5/3/2018", image:"app/assets/images/cinnabon.jpg", coLocation:"",
view_Count:"",coupon:"",premium:"false", used:"false", company_id:"" })

