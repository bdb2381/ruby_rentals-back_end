# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([( name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.destroy_all
# Item.destroy_all
# Inventory.destroy_all


# 10.times do User.create(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   street_address: Faker::Address.street_address,
#   city:  Faker::Address.city,
#   state: Faker::Address.state_abbr,
#   zip_code: Faker::Address.zip_code,
#   email: Faker::Internet.email,
#   phone: Faker::PhoneNumber.cell_phone, 
#   password: '123',
#   password_confirmation: '123'
# )
# end


# # 1
#  Item.create( 
#   brand: "Black Diamond",
#   model: "Mission",
#   item_type: "Backpack",
#   size: "75 Liters",
#   description:"Durable top-loading alpine pack engineered for everything from summer alpine cragging to gear-intensive winter expeditions, the Mission 75 gets your gear to the base in comfort.",
#   gear_photo_url: "https://www.blackdiamondequipment.com/on/demandware.static/-/Sites-bdel/default/dwde1f0a5f/products/F18_Product_Images/Equipment/681185_CBBK_Cobalt_Black_Mission75_Frnt.jpg",
#   model_year: 2020,
#   amount_available: 15,
#   day_rental_price: 30
# )

#  # 2 
#   Item.create( 
#     brand: "Black Diamond",
#     model: "SPEED PACK",
#     item_type: "Backpack",
#     size: "50 Liters",
#     description: "Time-tested on-route alpine pack for light, alpine-style ascents on rock, snow or ice, the Speed 50 is streamlined, strippable and designed to move with you.",
#     gear_photo_url: "https://www.blackdiamondequipment.com/on/demandware.static/-/Sites-bdel/default/dwfa12cd2f/products/packs/S16/681176_SULF_Speed_50_Pack_Front_web.jpg",
#     model_year: 2020,
#     amount_available: 15,
#     day_rental_price: 25
#   )


# # 3
#    Item.create( 
#     brand: "Black Diamond",
#     model: "CREEK PACK",
#     item_type: "Backpack",
#     size: "35 Liters",
#     description: "A deep top-loader ideal for gear-intensive cragging sessions, the Creek 35 is inspired by our haul bags and built with easy access and unparalleled durability in mind.",
#     gear_photo_url: "https://www.blackdiamondequipment.com/on/demandware.static/-/Sites-bdel/default/dwc9aea4eb/products/packs/S16/681174_BLAK_Creek_35_Pack_Front_web.jpg",
#     model_year: 2020,
#     amount_available: 15,
#     day_rental_price: 20
#   )


#   #4
#    Item.create( 
#     brand: "Nemo",
#     model: "Tempo™ Women’s Synthetic Sleeping Bag",
#     item_type: "Sleeping Bag",
#     size: "Regular",
#     description: "Insulated with synthetic Stratofiber™, Tempo™ offers the best blend of moisture resistance, comfort, packability, and affordability. An integrated pillow pocket allows a jacket, extra clothes, or a Fillo™ to be stuffed into the sleeve opening for a handy pillow-on-the-go, while Blanket Fold™ provides extra tucked-in comfort and temperature regulation mid-season. Left-sided zippers on Men’s and right-sided zippers on Women’s allow Tempo™ to zip together for a double version of these favorite sleeping bags.",
#     gear_photo_url:"https://www.nemoequipment.com/wp-content/uploads/jsgdrcdj5pbnwxlrw0m1-1024x866.jpg",
#     model_year: 2020,
#     amount_available: 15,
#     day_rental_price: 20
#   )


# #5
# Item.create( 
#  brand: "Nemo",
#  model: "Tempo™ Men’s Synthetic Sleeping Bag",
#  item_type: "Sleeping Bag",
#  size: "Regular",
#  description: "Insulated with synthetic Stratofiber™, Tempo™ offers the best blend of moisture resistance, comfort, packability, and affordability. An integrated pillow pocket allows a jacket, extra clothes, or a Fillo™ to be stuffed into the sleeve opening for a handy pillow-on-the-go, while Blanket Fold™ provides extra tucked-in comfort and temperature regulation mid-season. Left-sided zippers on Men’s and right-sided zippers on Women’s allow Tempo™ to zip together for a double version of these favorite sleeping bags.",
#  gear_photo_url: "https://www.nemoequipment.com/wp-content/uploads/yst4i6scbicpz0mena9b-1024x866.jpg",
#  model_year: 2020,
#  amount_available: 15,
#  day_rental_price: 20
# )


# #6
#  Item.create( 
#   brand: "Nemo",
#   model: "Firefly™ Backpacking Tent",
#   item_type: "Tent",
#   size: "2 Person",
#   description: "Firefly™ strikes a unique balance between affordability and lightweight livability in a freestanding backpacking tent. The large trapezoidal vestibules are designed to fit gear without obstructing entry and have multiple roll-back points to customize visibility and airflow. It's agile on the trail, quick to set up, and well-appointed for rejuvenation in camp.",
#   gear_photo_url: 'https://www.nemoequipment.com/wp-content/uploads/szegowzpck69xqeeiayp-1024x866.jp',
#   model_year: 2020,
#   amount_available: 15,
#   day_rental_price: 25
# )



15.times do Inventory.create(
  sku: Faker::Number.number(digits: 5),
  rental_status: true,
  condition: "good",
  date_bought: "01/01/2020 08:00",
  item_id: 18     # foreign_key from items table
)
end

puts "end seeded data"