# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

Host.destroy_all
Rental.destroy_all
Renter.destroy_all
Appointment.destroy_all

puts "Creating Hosts"
# Host.create(name: "test", password: "12345", email: "test", phone: "test", about: "testing")
h1 = Host.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, about: "Former NFL Cheerleader turned Real Estate Agent. Follow me on insta and stay in my beautiful place!")
h2 = Host.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, about: "I've visited every country in the world so I know what a great room is.")
h3 = Host.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, about: "After my trip to Red Rocks with my Grateful Dead buddies I can see colors and hear sounds.")
h4 = Host.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, about: "Master carpenter and Beanie Babies collector, if you break my place dont worry...I can fix it")
h5 = Host.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, about: "You'll love my apartment as much as I love hot dogs, and thats a whole DANG LOT")

puts "Creating Rentals"
# Rental.create(host_id: 1, cost: 99.99, address: "100 test, testville", max_guests: 9, description: "testing", image: "nope")
Rental.create(host: h1, cost: rand(1.0..300.0).round(2), address: "Upper East Side, Manhattan", max_guests: rand(1..10), description: "This small quiet aparment is all you need. Come stay...and don't ever leave :)", image: "https://a0.muscache.com/im/pictures/f2f22c68-f6af-4d76-ab2a-c88a23270a65.jpg?im_w=1440")
Rental.create(host: h1, cost: rand(1.0..300.0).round(2), address: "Woodhaven, Queens", max_guests: rand(1..10), description: "Lovely carpeted stairs and a bed that barely squeaks. You will absolutely love the fridge.", image: "https://a0.muscache.com/im/pictures/517e5302-018f-465f-94e6-0cd99f17e070.jpg?im_w=1200")
Rental.create(host: h1, cost: rand(1.0..300.0).round(2), address: "Ludlow, Yonkers", max_guests: rand(1..10), description: "Yonkers! Talk about a steal! LOL", image: "https://a0.muscache.com/im/pictures/f4003cbc-aa33-4679-a22f-5e07f4509943.jpg?im_w=1200")
Rental.create(host: h3, cost: rand(1.0..300.0).round(2), address: "Park Slope, Brooklyn", max_guests: rand(1..10), description: "Do you love super loud streets and neighbors that shriek? If so this place is for you! Please enjoy this 14sq foot rental.", image: "https://a0.muscache.com/im/pictures/652b951d-8139-4a36-a4c3-c0c9d0f12389.jpg?im_w=720")
Rental.create(host: h4, cost: rand(1.0..300.0).round(2), address: "Weeksville, Brooklyn", max_guests: rand(1..10), description: "OH! This is Brooklyn baby! B-town! Rent this 1BR and make sure to enjoy all the fine condiments at the nearby bodega", image: "https://a0.muscache.com/im/pictures/45b234e9-ae7b-4bd3-bafd-b5916edf0386.jpg?im_w=720")
Rental.create(host: h5, cost: rand(1.0..300.0).round(2), address: "Mike Station, Manhattan", max_guests: rand(1..10), description: "Newly renovated aparment. Classic NY! You won't find any better for the price!", image: "https://metro.co.uk/wp-content/uploads/2016/07/ad_212920336.jpg?quality=90&strip=all&zoom=1&resize=480%2C720")
Rental.create(host: h2, cost: rand(1.0..300.0).round(2), address: "Stankstown, Queens", max_guests: rand(1..10), description: "2 bedroom with all the fixins! New floors, cabinets and doorknobs!", image: "https://i.pinimg.com/originals/48/78/6f/48786f80a7f26972df7cf4cb8e9d9ad6.jpg")
Rental.create(host: h5, cost: rand(1.0..300.0).round(2), address: "Hells Kitchen, Manhattan", max_guests: rand(1..10), description: "Location,Location and location!! Elias’s place is right there in Time square, with so many bathroom options right outside the complex.", image: "https://a0.muscache.com/im/pictures/miso/Hosting-47073835/original/6ce49cc0-d6e4-411b-a30b-3f6b2fe19729.jpeg?im_w=1200")
Rental.create(host: h4, cost: rand(1.0..300.0).round(2), address: "Chelsea, Manhattan", max_guests: rand(1..10), description: "Practically a mansion and almost clean!", image: "https://i.pinimg.com/originals/48/78/6f/48786f80a7f26972df7cf4cb8e9d9ad6.jpg")
Rental.create(host: h3, cost: rand(1.0..300.0).round(2), address: "Bologna, Brooklyn", max_guests: rand(1..10), description: "Ever pay to sleep in a van? Now you can! And you'll hate it!", image: "https://a0.muscache.com/im/pictures/6d20a94f-4590-4cff-b269-0bcc14bce69e.jpg?im_w=1200")
Rental.create(host: h1, cost: rand(1.0..300.0).round(2), address: "Upper East Side, Manhattan", max_guests: rand(1..10), description: "Down on your luck? Come sleep in this van, no bathroom or pillows but you'll enjoy all the views you can take", image: "https://a0.muscache.com/im/pictures/miso/Hosting-49965716/original/9f119d80-6d61-4f87-b207-d3ce0e2f1ab9.jpeg?im_w=1200")
Rental.create(host: h2, cost: rand(1.0..300.0).round(2), address: "4th Ave Alley, Brooklyn", max_guests: rand(1..10), description: "Experience the cozy camper van #VanLife - a social media success/a phrase that has been used 4 times on Instagram", image: "https://a0.muscache.com/im/pictures/2bfc9a61-cfb2-435a-abf7-7ceac745ad59.jpg?im_w=1200")
Rental.create(host: h5, cost: rand(1.0..300.0).round(2), address: "East Elmhurst, Queens", max_guests: rand(1..10), description: "near LaGuardia Airport near shopping and transportation, and a short 95 minutes to Manhattan", image: "https://a0.muscache.com/im/pictures/4a321444-a120-4ab7-b378-b7df8775dc11.jpg?im_w=1200")
Rental.create(host: h4, cost: rand(1.0..300.0).round(2), address: "East Williamsburg, Brooklyn", max_guests: rand(1..10), description: "like beach and calm atmosphere (JK) in a clean home for the perfect vacation", image: "https://a0.muscache.com/im/pictures/6d8a6517-a687-4f3e-8079-9069532c659e.jpg?im_w=1200")
Rental.create(host: h3, cost: rand(1.0..300.0).round(2), address: "Boerum Hill, Brooklyn", max_guests: rand(1..10), description: "A charming, cozy carriage house nestled in the heart of tree-lined Boerum Hill, one of Brooklyn's most frightening neighborhoods.", image: "https://a0.muscache.com/im/pictures/d6d0ef2e-dd60-4293-8e1b-e8b5aee510c4.jpg?im_w=1200")
Rental.create(host: h1, cost: rand(1.0..300.0).round(2), address: "Fire Island, Manhattan", max_guests: rand(1..10), description: "Here is a picture of a boat. My apartment looks nothing like this.", image: "https://a0.muscache.com/im/pictures/ef93d235-3f06-4daa-8ad3-0e9d2cab2ef3.jpg?im_w=1200")
Rental.create(host: h2, cost: rand(1.0..300.0).round(2), address: "Turtle Castle, Queens", max_guests: rand(1..10), description: "You have your own private bathroom that features a large shower with a 3 inch rain shower head and Brooklinen wool sheets and miniature sized bath towels.", image: "https://a0.muscache.com/im/pictures/d2c4fbd1-b2c1-4004-a5e9-c0a834d7ce6a.jpg?im_w=720")
Rental.create(host: h2, cost: rand(1.0..300.0).round(2), address: "Sea Gate, Brooklyn", max_guests: rand(1..10), description: "Entire place can be used by the guests. Also this is an RV. So it ain't much", image: "https://a0.muscache.com/im/pictures/f7c68d32-35ff-41be-bd03-78aea7b98c42.jpg?im_w=1200")
Rental.create(host: h4, cost: rand(1.0..300.0).round(2), address: "Shore Acres, Staten Island", max_guests: rand(1..10), description: "Our OPEN retired family room, lower level of home is separated from rest of basement by a curtain.", image: "https://a0.muscache.com/im/pictures/40208981/d3086697_original.jpg?im_w=1200")
Rental.create(host: h2, cost: rand(1.0..300.0).round(2), address: "Allerton, the Bronx", max_guests: rand(1..10), description: "Our space has everything you may need to make you feel right at home. It’s a new space designed with Santa in mind.", image: "https://a0.muscache.com/im/pictures/d13ce1ea-4433-4f75-b70f-9072dd06356d.jpg?im_w=1200")
Rental.create(host: h2, cost: rand(1.0..300.0).round(2), address: "Pomonok, Queens", max_guests: rand(1..10), description: "Breakfast can be served at request (all I've got is cornflakes and pickles), but there are many close restaurants/shopping centers/malls etcetera near by.", image: "https://a0.muscache.com/im/pictures/miso/Hosting-45112638/original/4b6fe06c-457a-49b2-bd22-7440e2304440.jpeg?im_w=1200")

puts "Creating Renters"
# Renter.create(name: "", password: "TODO", email: "", phone: "")
5.times do
    Renter.create(name: Faker::Name.name, password: "TODO", email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone)
end

puts "Creating Appointments"
# Appointment.create(rental_id: 1, renter_id: 1, start_date: DateTime.now(), end_date: DateTime.now(), num_guests: 1)
10.times do
    near_date = rand(DateTime.now - 3.months..(DateTime.now + 2.months))
    far_date = near_date + rand(1..3).months

    Appointment.create(rental: Rental.all.sample, 
                    renter: Renter.all.sample, 
                    start_date: near_date, 
                    end_date: far_date, 
                    num_guests: rand(1..3))
end

puts "Done!"