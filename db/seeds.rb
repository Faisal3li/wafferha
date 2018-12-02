User.destroy_all

User.create(name: "admin", username: "admin", email: "admin@example.com", password: "123456", password_confirmation: "123456", admin: "true")

Category.destroy_all

categories = ["Entertainment", "Resturant", "Fashion Retailers", "Health Care"]

categories.each do |c|
  Category.create(name: c)
end

entertaiment = Category.find_by(name: "Entertainment")
resturant = Category.find_by(name: "Resturant")
fashion = Category.find_by(name: "Fashion Retailers")
health = Category.find_by(name: "Health Care")

Company.destroy_all
com1 = Company.create(name: "Zara", description: "Zara SA is a Spanish fast fashion retailer.", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpKVRBOW2GV9RsnVgTJ176MqYAn1DB5Ur6041MtJGY5ELRAp8ZdgtF", category_id: fashion.id)
com2 = Company.create(name: "Starbucks", description: "Coffeehouse chain. ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdwqNuHi3ZO9Suos68vXFXRpinUcs6v7A2HHWfib3HULVvpRz-jA", category_id: resturant.id)
com3 = Company.create(name: "Buffalo Wings", description: "Buffalo Wings Restaurant", image: "https://www.cincinnatiburgerweek.com/wp-content/uploads/2018/04/buffalo-wings-rings.jpg", category_id: resturant.id)
com4 = Company.create(name: "Jolt", description: "CoffeeShop", image: "https://scontent-mrs1-1.cdninstagram.com/vp/9698a0274a2edb61400a21edccb3ac59/5CAE0DA8/t51.2885-19/s320x320/33021638_182051442505382_6460066833968922624_n.jpg", category_id: resturant.id)

Offer.destroy_all
Offer.create(offer_Description: "buy 2 get one free", expired_Date: "20-08-2018", start_Date: "20-08-2018", image: "app/assets/images/cinnabon.jpg", coLocation: "Riyadh", view_Count: 1, coupon: "blah", used: false, company_id: com1.id)
Offer.create(offer_Description: "Buy One Frappuccino Get 2 free ", expired_Date: "20-08-2018", start_Date: "20-08-2018", image: "http://afindemes.republica.com/files/2011/07/starbucks-happyhour.jpg", coLocation: "Jeddah", view_Count: 1, coupon: "blah", used: false, company_id: com2.id)
Offer.create(offer_Description: "Get One of these meals with any main desh  ", expired_Date: "20-08-2018", start_Date: "20-08-2018", image: "https://cdn.cobone.com/deals/sau/71824/MAIN.jpg?v=14", coLocation: "Dammam", view_Count: 1, coupon: "blah", used: false, company_id: com3.id)
Offer.create(offer_Description: "Buy One get one free", expired_Date: "20-08-2018", start_Date: "20-08-2018", image: "https://media-cdn.tripadvisor.com/media/photo-s/12/36/7e/b6/photo0jpg.jpg", coLocation: "Riyadh", view_Count: 1, coupon: "blah", used: false, company_id: com4.id)

File.open(File.join(Rails.root, "app/assets/images/cinnabon.jpg"))
