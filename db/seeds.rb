# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database"
Favourite.destroy_all
Venue.destroy_all
User.destroy_all

# -----------------------VENUES----------------------------------
puts "Creating venues"

restaurant1 = Venue.create!(
  name: "Tokyo Diner",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://lh5.googleusercontent.com/p/AF1QipO3chS4TZulZcbGi4y0AFvvGuJzbQHfqdgaV5xD=w408-h306-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "2 Newport Pl, London WC2H 7JP",
  category: "Restaurant",
  phone: Faker::PhoneNumber.phone_number)

restaurant2 = Venue.create!(
  name: "Sartori",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://lh5.googleusercontent.com/p/AF1QipOTJofYX8R6XBwlF8OXxxmXy51XOeUjRAipizhI=w408-h271-k-no",
  price: "$" * (1..5).to_a.sample,
  address: "17-21 Leicester Square, London WC2H 7LE",
  category: "Restaurant" ,
  phone: Faker::PhoneNumber.phone_number)

restaurant3 = Venue.create!(
  name: Faker::Restaurant.name,
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://lh5.googleusercontent.com/p/AF1QipOTJofYX8R6XBwlF8OXxxmXy51XOeUjRAipizhI=w408-h271-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "15 Great Newport St, Covent Garden, London WC2H 7JE",
  category: "Restaurant" , phone: Faker::PhoneNumber.phone_number)

restaurant4 = Venue.create!(
  name: "The Ivy",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://lh5.googleusercontent.com/p/AF1QipMlhonMDDYT6tvdbPxrYVu4TfQyGDwwVkJL3ldM=w408-h271-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "1-5 West St, London WC2H 9NQ",
  category: "Restaurant" ,
  phone: Faker::PhoneNumber.phone_number)


restaurant5 = Venue.create!(
  name: "Chick 'n' Sours",
  review_count: (50..250).to_a.sample,
  rating: (3..5).to_a.sample,
  photo: "http://prod-upp-image-read.ft.com/9a8b1d90-c8a2-11e7-ab18-7a9fb7d6163e" ,
  price: "$" * (1..5).to_a.sample,
  address: "1A Earlham St, London WC2H 9LL",
  category: "Restaurant" ,
  phone: Faker::PhoneNumber.phone_number)

restaurant5 = Venue.create!(
  name: "Souk Medina",
  review_count: (50..250).to_a.sample,
  rating: (3..5).to_a.sample,
  photo: "http://img.static-bookatable.com/75e3953033e20f6d25f6ef25eea6b5f5.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "1a Short's Gardens, London WC2H 9AT",
  category: "Restaurant" ,
  phone: Faker::PhoneNumber.phone_number)

restaurant5 = Venue.create!(
  name: "Monmouth Kitchen",
  review_count: (50..250).to_a.sample,
  rating: (3..5).to_a.sample,
  photo: "https://www.abouttimemagazine.co.uk/wp-content/uploads/2016/12/outside.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "20 Mercer St, London WC2H 9HD",
  category: "Restaurant" ,
  phone: Faker::PhoneNumber.phone_number)



bar1 = Venue.create!(
  name: "The Escapologist",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://lh5.googleusercontent.com/p/AF1QipM5eZ4GDgQbYitrl_vT3x7B3AkoHLxYzojjTuFs=w408-h271-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "35 Earlham St, Covent Garden, London WC2H 9LD",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number)


bar2 = Venue.create!(
  name: "Bar Termini",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://lh5.googleusercontent.com/p/AF1QipM__oqzjAGerYV0r4YQgrADygGB3tW_-N3Ljdsm=w408-h306-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "7 Old Compton St, Soho, London W1D 5JE",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number)


bar3 = Venue.create!(
  name: "Swift",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://lh5.googleusercontent.com/p/AF1QipOVyGN_qzMdtMAfnWHQkdAgxuQsWhy34GhaBMFq=w408-h271-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "12 Old Compton St, Soho, London W1D 4TQ",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number)


bar4 = Venue.create!(
  name: "Baileys Treat Bar",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://lh5.googleusercontent.com/p/AF1QipPynUjGMJedTwHbwFVku8-KR189TEFqV_F7MBaN=w408-h306-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "9 Short's Gardens, London WC2H 9AZ",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number)

bar5 = Venue.create!(
  name: "Crown",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://www.fluidnetwork.co.uk/gfx/venues/1426/the-crown-and-two-chairmen-pub-in-soho-london-a.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "The Crown, 43 Monmouth St, London WC2H 9DD",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number)

bar6 = Venue.create!(
  name: "The Porcupine",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://c1.staticflickr.com/5/4856/45518720184_635dcfa0c8_b.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "48 Charing Cross Rd, Covent Garden, London WC2H 0BS",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number)




coffee1 = Venue.create!(
  name: "Jacob the Angel",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://jacobtheangel.co.uk/wp-content/uploads/2019/04/Jacob-The-Angel-0342-700x700.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "16A Neal's Yard, London WC2H 9DP",
  category: "Coffeeshop" ,
  phone: Faker::PhoneNumber.phone_number)


coffee2 = Venue.create!(
  name: "TY Seven Dials",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://images.squarespace-cdn.com/content/v1/5c4ddd36a9e028966c5b137a/1554985076916-1J1J84KU4BQPCJSFDBI3/ke17ZwdGBToddI8pDm48kKAwwdAfKsTlKsCcElEApLR7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UegTYNQkRo-Jk4EWsyBNhwKrKLo5CceA1-Tdpfgyxoog5ck0MD3_q0rY3jFJjjoLbQ/TY-2019-11.4-17.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "7 Upper St Martin's Ln, London WC2H 9DL",
  category: "Coffeeshop" ,
  phone: Faker::PhoneNumber.phone_number)


coffee3 = Venue.create!(
  name: "Coffee Island",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://lh5.googleusercontent.com/p/AF1QipPMCom2oGBhFqJzgJ3ux-6pOVPl8MYHHabkvZiJ=w408-h270-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "5 Upper St Martin's Ln, London WC2H 9NY",
  category: "Coffeeshop" ,
  phone: Faker::PhoneNumber.phone_number)

coffee4 = Venue.create!(
  name: "Z Cafe Soho",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://dodesignstudio.co.uk/wp-content/uploads/2014/03/Cafe-Shot-11.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "17 Moor St, Soho, London W1D 5AP",
  category: "Coffeeshop" ,
  phone: Faker::PhoneNumber.phone_number)

coffee5 = Venue.create!(
  name: "The Espresso Room",
  review_count: (1..100).to_a.sample,
  rating: (1..5).to_a.sample,
  photo: "https://media-cdn.tripadvisor.com/media/photo-s/13/d5/64/e1/counter-area.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "24 New Row, Covent Garden, London WC2N 4LA",
  category: "Coffeeshop" ,
  phone: Faker::PhoneNumber.phone_number)

# -------------------------USERS----------------------------------

puts "Creating users"
molly = User.create!(password: "123123", email: "mdaguilar66@gmail.com")
bruno = User.create!(password: "123123", email: "adenis.bruno@hotmail.com")
cecilia = User.create!(password: "123123", email: "ceciliamarcellesi@gmail.com")
lucas = User.create!(password: "123123", email: "lucaschanet@gmail.com")


# -------------------------FAVOURITE----------------------------------
puts "Creating favourites"
Favourite.create!(user: molly, venue: restaurant1)
Favourite.create!(user: molly, venue: bar1)
Favourite.create!(user: molly, venue: coffee1)
Favourite.create!(user: bruno, venue: restaurant2)
Favourite.create!(user: bruno, venue: bar2)
Favourite.create!(user: bruno, venue: coffee2)
Favourite.create!(user: cecilia, venue: restaurant3)
Favourite.create!(user: cecilia, venue: bar3)
Favourite.create!(user: cecilia, venue: coffee3)
Favourite.create!(user: lucas, venue: restaurant4)
Favourite.create!(user: lucas, venue: bar4)
Favourite.create!(user: lucas, venue: coffee3)



puts "Finished!"


