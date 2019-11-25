# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database"
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
  photo: "https://lh5.googleusercontent.com/p/AF1QipOtByx_EhKt4GcBR6KjT_q1sr0_RZ-8Ba9t2PlW=w426-h240-k-no" ,
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


