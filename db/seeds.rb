# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Host.destroy_all
Rental.destroy_all

puts "Creating Hosts"
# Host.create(name: "test", password: "12345", email: "test", phone: "test", about: "testing")
h1 = Host.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, about: "TODO")
h2 = Host.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, about: "TODO")
h3 = Host.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, about: "TODO")
h4 = Host.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, about: "TODO")
h5 = Host.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, about: "TODO")

puts "Creating Rentals"
# Rental.create(host_id: 1, cost: 99.99, address: "100 test, testville", max_guests: 9, description: "testing", image: "nope")
Rental.create(host: h1, cost: rand(1.0..300.0), address: "Upper East Side, Manhattan", max_guests: rand(1..10), description: "TODO", image: "https://a0.muscache.com/im/pictures/f2f22c68-f6af-4d76-ab2a-c88a23270a65.jpg?im_w=1440")
Rental.create(host: h1, cost: rand(1.0..300.0), address: "Woodhaven, Queens", max_guests: rand(1..10), description: "TODO", image: "https://a0.muscache.com/im/pictures/517e5302-018f-465f-94e6-0cd99f17e070.jpg?im_w=1200")
Rental.create(host: h1, cost: rand(1.0..300.0), address: "Ludlow, Yonkers", max_guests: rand(1..10), description: "TODO", image: "https://a0.muscache.com/im/pictures/f4003cbc-aa33-4679-a22f-5e07f4509943.jpg?im_w=1200")
Rental.create(host: h3, cost: rand(1.0..300.0), address: "Park Slope, Brooklyn", max_guests: rand(1..10), description: "TODO", image: "https://a0.muscache.com/im/pictures/652b951d-8139-4a36-a4c3-c0c9d0f12389.jpg?im_w=720")
Rental.create(host: h4, cost: rand(1.0..300.0), address: "Weeksville, Brooklyn", max_guests: rand(1..10), description: "TODO", image: "https://a0.muscache.com/im/pictures/45b234e9-ae7b-4bd3-bafd-b5916edf0386.jpg?im_w=720")
Rental.create(host: h5, cost: rand(1.0..300.0), address: "WTF", max_guests: rand(1..10), description: "TODO", image: "https://metro.co.uk/wp-content/uploads/2016/07/ad_212920336.jpg?quality=90&strip=all&zoom=1&resize=480%2C720")
Rental.create(host: h5, cost: rand(1.0..300.0), address: "...", max_guests: rand(1..10), description: "TODO", image: "https://i.pinimg.com/originals/48/78/6f/48786f80a7f26972df7cf4cb8e9d9ad6.jpg")

puts "Done!"