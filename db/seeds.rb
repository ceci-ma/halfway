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
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://cdn.tasteatlas.com/images/restaurants/285b65386a094d3298f052c6ad25245a.jpg?w=60&h=450" ,
  price: "$" * (1..5).to_a.sample,
  address: "2 Newport Pl, London WC2H 7JP",
  category: "Restaurant",
  phone: "020 7287 8777",
  url: "tokyodiner.com",
  commute_one: 37,
  commute_two: 23)

restaurant2 = Venue.create!(
  name: "Sartori",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://www.travelmag.com/wp-content/uploads/2017/04/Cafe-Murano.jpg",
  price: "$" * (1..5).to_a.sample,
  address: "17-21 Leicester Square, London WC2H 7LE",
  url: "sartorirestaurant.com",
  category: "Restaurant" ,
  phone: "020 7836 6308",
  commute_one: 23,
  commute_two: 37)


restaurant3 = Venue.create!(
  name: "The Ivy",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://lh5.googleusercontent.com/p/AF1QipMlhonMDDYT6tvdbPxrYVu4TfQyGDwwVkJL3ldM=w408-h271-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "West St, London WC2H 9NQ",
  category: "Restaurant",
  url: "the-ivy.co.uk",
  phone: "020 7836 4751",
  commute_one: 32,
  commute_two: 28)


restaurant4 = Venue.create!(
  name: "Chick 'n' Sours",
  review_count: (60..4000).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "http://prod-upp-image-read.ft.com/9a8b1d90-c8a2-11e7-ab18-7a9fb7d6163e" ,
  price: "$" * (1..5).to_a.sample,
  address: "1A Earlham St, London WC2H 9LL",
  category: "Restaurant",
  url: "chicknsours.co.uk",
  phone: "020 3198 4814",
  commute_one: 35,
  commute_two: 30)

restaurant5 = Venue.create!(
  name: "Souk Medina",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "http://img.static-bookatable.com/75e3953033e20f6d25f6ef25eea6b5f5.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "1a Short's Gardens, London WC2H 9AT",
  category: "Restaurant" ,
  url: "soukrestaurant.co.uk",
  phone: "020 7240 1796",
  commute_one: 25,
  commute_two: 23)

restaurant6 = Venue.create!(
  name: "Rules",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://www.britain-magazine.com/wp-content/uploads/Rules-of-London.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "34-35 Maiden Ln, Covent Garden, London WC2E 7LB",
  category: "Restaurant" ,
  url: "rules.co.uk",
  phone: "020 7836 5314",
  commute_one: 25,
  commute_two: 23)

restaurant7 = Venue.create!(
  name: "Frenchie Covent Garden",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://media-cdn.tripadvisor.com/media/photo-s/11/fc/79/ef/counter-seats.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "16 Henrietta St, Covent Garden, London WC2E 8QH",
  category: "Restaurant" ,
  url: "frenchiecoventgarden.com",
  phone: "020 7836 4422",
  commute_one: 25,
  commute_two: 23)

# restaurant8 = Venue.create!(
#   name: "Scully St James's",
#   review_count: (60..400).to_a.sample,
#   rating: rand(3.0..5.0).round(1),
#   photo: "https://static.standard.co.uk/s3fs-public/thumbnails/image/2018/04/19/12/scully.jpg?w968" ,
#   price: "$" * (1..5).to_a.sample,
#   address: "11B Regent St, St. James's, London SW1Y 4LR",
#   url: "https://www.scullyrestaurant.com/",
#   category: "Restaurant" ,
#   phone: "020 3911 6840",
#   commute_one: 25,
#   commute_two: 23)

restaurant8 = Venue.create!(
  name: "The Palomar",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://thepalomar.co.uk/wp-content/uploads/2017/07/palomarHome_edit01.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "34 Rupert St, London W1D 6DN",
  category: "Restaurant" ,
  url: "thepalomar.co.uk",
  phone: "020 7439 8777",
  commute_one: 25,
  commute_two: 23)

restaurant8 = Venue.create!(
  name: "The Oystermen Kitchen",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://cdn.londonandpartners.com/asset/the-oystermen-seafood-bar-and-kitchen_the-oystermen-seafood-bar-and-kitchen-credit-greg-funnell_0e5cc3ef17bf4030c9f0f95bb5090126.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "32 Henrietta St, Covent Garden, London WC2E 8NA",
  category: "Restaurant" ,
  url: "oystermen.co.uk",
  phone: "020 7240 4417",
  commute_one: 25,
  commute_two: 23)


restaurant9 = Venue.create!(
  name: "Fumo",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://resizer.otstatic.com/v2/photos/wide-huge/2/26245029.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "Mays Ct, Westminster, London WC2N 4EJ",
  category: "Restaurant" ,
  url: "sancarlo.co.uk",
  phone: "020 3778 0430",
  commute_one: 25,
  commute_two: 23)

restaurant10 = Venue.create!(
  name: "Kricket Soho",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://media.timeout.com/images/103774252/630/472/image.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "12 Denman St, Soho, London W1D 7HH",
  category: "Restaurant" ,
  url: "kricket.co.uk",
  phone: "020 7734 5612",
  commute_one: 25,
  commute_two: 23)


restaurant11 = Venue.create!(
  name: "Kiln",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://www.nationalrestaurantawards.co.uk/wp-content/uploads/2019/05/Kiln3.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "58 Brewer St, Soho, London W1F 9TL",
  category: "Restaurant" ,
  url: "kilnsoho.com",
  phone: "020 7734 5612",
  commute_one: 25,
  commute_two: 23)

restaurant12 = Venue.create!(
  name: "Brasserie Zédel",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://s3.eu-west-1.amazonaws.com/zedel.assets.d3r.com/images/homeslide/8588-brasserie-zedel-interior-4.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "20 Sherwood St, Soho, London W1F 7ED",
  category: "Restaurant" ,
  url: "brasseriezedel.com",
  phone: "020 7734 5612",
  commute_one: 25,
  commute_two: 23)

# restaurant13 = Venue.create!(
#   name: "Oka Restaurant",
#   review_count: (60..400).to_a.sample,
#   rating: rand(3.0..5.0).round(1),
#   photo: "http://www.eetapp.com/uploads/restaurants/search_listing/9521/oka_restaurant_1_small.jpg" ,
#   price: "$" * (1..5).to_a.sample,
#   address: "Kingly St, Carnaby, London W1B 5PW",
#   category: "Restaurant" ,
#   url: "okarestaurant.co.uk",
#   phone: "020 7734 5612",
#   commute_one: 25,
#   commute_two: 23)

restaurant15 = Venue.create!(
  name: "Dishoom Carnaby",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://images.prismic.io/dishoom/6b4152420aefda5605615276115cc14d53dd9be9_carnaby_verandah_3.jpg?auto=compress,format" ,
  price: "$" * (1..5).to_a.sample,
  address: "22 Kingly St, Soho, London W1B 5QP",
  category: "Restaurant" ,
  url: "https://www.dishoom.com/",
  phone: "020 7420 9322",
  commute_one: 25,
  commute_two: 23)

restaurant16 = Venue.create!(
  name: "Riding House Café",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://media-cdn.tripadvisor.com/media/photo-s/0c/37/61/10/riding-house-bar.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "43-51 Great Titchfield St, Fitzrovia, London W1W 7PQ",
  category: "Restaurant" ,
  url: "ridinghouse.cafe",
  phone: "020 7927 0840",
  commute_one: 25,
  commute_two: 23)

restaurant17 = Venue.create!(
  name: "Homeslice Fitzrovia",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://images.squarespace-cdn.com/content/v1/558d04b2e4b0750606e349c9/1439971164998-QDNK7H56EKLJDKLM2WFN/ke17ZwdGBToddI8pDm48kFWxnDtCdRm2WA9rXcwtIYR7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UcTSrQkGwCGRqSxozz07hWZrYGYYH8sg4qn8Lpf9k1pYMHPsat2_S1jaQY3SwdyaXg/_MG_5077.jpg?format=1500w" ,
  price: "$" * (1..5).to_a.sample,
  address: "52 Wells St, Fitzrovia, London W1T 3PR",
  category: "Restaurant" ,
  url: "homeslicepizza.co.uk",
  phone: "020 3151 9273",
  commute_one: 25,
  commute_two: 23)


restaurant18 = Venue.create!(
  name: "ROKA Charlotte Street",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://hirespace.imgix.net/spaces/170153/hzhapfea4uy.jpg?h=1080&w=1920&auto=format&fit=crop&q=40" ,
  price: "$" * (1..5).to_a.sample,
  address: "37 Charlotte St, Fitzrovia, London W1T 1RR",
  category: "Restaurant" ,
  url: "rokarestaurant.com",
  phone: "020 7580 6464",
  commute_one: 25,
  commute_two: 23)

restaurant19 = Venue.create!(
  name: "Kazu",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://media.timeout.com/images/105285196/630/472/image.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "64 Charlotte St, Fitzrovia, London W1T 4QD",
  category: "Restaurant" ,
  url: "kazurestaurants.com",
  phone: "020 3848 5777",
  commute_one: 25,
  commute_two: 23)

restaurant20 = Venue.create!(
  name: "Franco Manca",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://www.francomanca.co.uk/wp-content/uploads/2018/05/Ealing-external-1-4811-1000x723.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "98 Tottenham Court Rd, Bloomsbury, London W1T 4TR",
  category: "Restaurant" ,
  url: "https://www.francomanca.co.uk/restaurants/tottenham-court-road/",
  phone: "020 7580 1913",
  commute_one: 25,
  commute_two: 23)

restaurant21 = Venue.create!(
  name: "Ristorante Olivelli",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://media-cdn.tripadvisor.com/media/photo-s/04/2d/18/3f/paradiso-olivelli.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "35 Store St, Bloomsbury, London WC1E 7BS",
  category: "Restaurant" ,
  url: "ristoranteolivelli.co.uk",
  phone: "020 7580 1913",
  commute_one: 25,
  commute_two: 23)

restaurant22 = Venue.create!(
  name: "Bahn Mi Bay",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://media-cdn.tripadvisor.com/media/photo-s/06/88/85/7c/banh-mi-bay.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "4-6 Theobalds Rd, Holborn, London WC1X 8PN",
  category: "Restaurant" ,
  url: "banhmibay.co.uk",
  phone: "020 7831 4079",
  commute_one: 25,
  commute_two: 23)

restaurant23 = Venue.create!(
  name: "Kin",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://www.devolkitchens.co.uk/blog/wp-content/uploads/2015/12/KIN1.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "88 Leather Ln, Holborn, London EC1N 7TT",
  category: "Restaurant" ,
  url: "kinstreetfood.com",
  phone: "020 7430 0886",
  commute_one: 25,
  commute_two: 23)

# restaurant23 = Venue.create!(
#   name: "Paesan",
#   review_count: (60..400).to_a.sample,
#   rating: rand(3.0..5.0).round(1),
#   photo: "https://static.standard.co.uk/s3fs-public/thumbnails/image/2013/09/06/10/AN27004275Paesan-interior-8.jpg?w968" ,
#   price: "$" * (1..5).to_a.sample,
#   address: "Exmouth Market, Farringdon, London EC1R 4PX",
#   category: "Restaurant" ,
#   url: "paesanlondon.com",
#   phone: "020 7837 7139",
#   commute_one: 25,
#   commute_two: 23)

# restaurant24 = Venue.create!(
#   name: "Bourne & Hollingsworth",
#   review_count: (60..400).to_a.sample,
#   rating: rand(3.0..5.0).round(1),
#   photo: "https://headbox-media.imgix.net/uploads/space_photo/filename/61978/detail_Greenhouse1.jpg?auto=compress,format" ,
#   price: "$" * (1..5).to_a.sample,
#   address: "Northampton Rd, Farringdon, London EC1R 0HU",
#   category: "Restaurant" ,
#   url: "bandhbuildings.com",
#   phone: "020 3174 1156",
#   commute_one: 25,
#   commute_two: 23)

restaurant25 = Venue.create!(
  name: "Caravan Exmouth Market",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://resizer.otstatic.com/v2/photos/wide-huge/3/26298189.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "11-13 Exmouth Market, Farringdon, London EC1R 4QD",
  category: "Restaurant" ,
  url: "caravanrestaurants.co.uk",
  phone: "020 7833 8115",
  commute_one: 25,
  commute_two: 23)

restaurant26 = Venue.create!(
  name: "Exmouth Market Grind",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://media-cdn.tripadvisor.com/media/photo-s/10/96/44/c0/outside-seating.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "8-10 Exmouth Market, Farringdon, London EC1R 4QA",
  category: "Restaurant" ,
  url: "grind.co.uk",
  phone: "020 3019 7709",
  commute_one: 25,
  commute_two: 23)

restaurant27 = Venue.create!(
  name: "Berber & Q",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://cdn-assets.foodify.io/55/gallery_assets/5bb4d97cb12cc/thumbs/1200x800x/2016_07_21_SHAWARMA_BAR_58844.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "46 Exmouth Market, Farringdon, London EC1R 4QE",
  category: "Restaurant" ,
  url: "shawarmabar.co.uk",
  phone: "020 7837 1726",
  commute_one: 25,
  commute_two: 23)



restaurant29 = Venue.create!(
  name: "The Gate Islington",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://thegaterestaurants.com/wp-content/uploads/2019/08/ISL2.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "370 St John St, Clerkenwell, London EC1V 4NN",
  category: "Restaurant" ,
  url: "thegaterestaurants.com",
  phone: "020 7833 0401",
  commute_one: 25,
  commute_two: 23)

restaurant30 = Venue.create!(
  name: "The Breakfast Club",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://images.ctfassets.net/t5afiavuz3to/6jAXj2LwcMaCqgoWYYyUMq/7f2c782164f9d1d10e547578058d471f/1_The_Breakfast_Club?w=800" ,
  price: "$" * (1..5).to_a.sample,
  address: "31 Camden Passage, The Angel, London N1 8EA",
  category: "Restaurant" ,
  url: "thebreakfastclubcafes.com",
  phone: "020 7226 5454",
  commute_one: 25,
  commute_two: 23)

restaurant31 = Venue.create!(
  name: "The Modern Pantry",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://static.standard.co.uk/s3fs-public/thumbnails/image/2017/11/29/13/modern-pantry-finsbury-1.jpg?w968" ,
  price: "$" * (1..5).to_a.sample,
  address: "1 Albemarle Way, Farringdon, London EC1V 4JB",
  category: "Restaurant" ,
  url: "themodernpantry.co.uk",
  phone: "020 7553 9210",
  commute_one: 25,
  commute_two: 23)




























bar1 = Venue.create!(
  name: "The Escapologist",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://lh5.googleusercontent.com/p/AF1QipM5eZ4GDgQbYitrl_vT3x7B3AkoHLxYzojjTuFs=w408-h271-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "35 Earlham St, Covent Garden, London WC2H 9LD",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number,
  commute_one: 30,
  commute_two: 32)


bar2 = Venue.create!(
  name: "Bar Termini",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://lh5.googleusercontent.com/p/AF1QipM__oqzjAGerYV0r4YQgrADygGB3tW_-N3Ljdsm=w408-h306-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "7 Old Compton St, Soho, London W1D 5JE",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number,
  commute_one: 31,
  commute_two: 23)


bar3 = Venue.create!(
  name: "Swift",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://lh5.googleusercontent.com/p/AF1QipOVyGN_qzMdtMAfnWHQkdAgxuQsWhy34GhaBMFq=w408-h271-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "12 Old Compton St, Soho, London W1D 4TQ",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number,
  commute_one: 29,
  commute_two: 25)


bar4 = Venue.create!(
  name: "Baileys Treat Bar",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://lh5.googleusercontent.com/p/AF1QipPynUjGMJedTwHbwFVku8-KR189TEFqV_F7MBaN=w408-h306-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "9 Short's Gardens, London WC2H 9AZ",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number,
  commute_one: 31,
  commute_two: 32)

bar5 = Venue.create!(
  name: "Crown",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://www.fluidnetwork.co.uk/gfx/venues/1426/the-crown-and-two-chairmen-pub-in-soho-london-a.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "The Crown, 43 Monmouth St, London WC2H 9DD",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number,
  commute_one: 28,
  commute_two: 32)

bar6 = Venue.create!(
  name: "The Porcupine",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://c1.staticflickr.com/5/4856/45518720184_635dcfa0c8_b.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "48 Charing Cross Rd, Covent Garden, London WC2H 0BS",
  category: "Bar" ,
  phone: Faker::PhoneNumber.phone_number,
  commute_one: 28,
  commute_two: 32)




coffee1 = Venue.create!(
  name: "Jacob the Angel",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://jacobtheangel.co.uk/wp-content/uploads/2019/04/Jacob-The-Angel-0342-700x700.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "16A Neal's Yard, London WC2H 9DP",
  category: "Coffeeshop" ,
  phone: Faker::PhoneNumber.phone_number,
  commute_one: 30,
  commute_two: 32)


coffee2 = Venue.create!(
  name: "TY Seven Dials",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://images.squarespace-cdn.com/content/v1/5c4ddd36a9e028966c5b137a/1554985076916-1J1J84KU4BQPCJSFDBI3/ke17ZwdGBToddI8pDm48kKAwwdAfKsTlKsCcElEApLR7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UegTYNQkRo-Jk4EWsyBNhwKrKLo5CceA1-Tdpfgyxoog5ck0MD3_q0rY3jFJjjoLbQ/TY-2019-11.4-17.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "7 Upper St Martin's Ln, London WC2H 9DL",
  category: "Coffeeshop" ,
  phone: Faker::PhoneNumber.phone_number,
  commute_one: 31,
  commute_two: 30)


coffee3 = Venue.create!(
  name: "Coffee Island",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://lh5.googleusercontent.com/p/AF1QipPMCom2oGBhFqJzgJ3ux-6pOVPl8MYHHabkvZiJ=w408-h270-k-no" ,
  price: "$" * (1..5).to_a.sample,
  address: "5 Upper St Martin's Ln, London WC2H 9NY",
  category: "Coffeeshop" ,
  phone: Faker::PhoneNumber.phone_number,
  commute_one: 28,
  commute_two: 26)

coffee4 = Venue.create!(
  name: "Z Cafe Soho",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://dodesignstudio.co.uk/wp-content/uploads/2014/03/Cafe-Shot-11.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "17 Moor St, Soho, London W1D 5AP",
  category: "Coffeeshop" ,
  phone: Faker::PhoneNumber.phone_number,
  commute_one: 27,
  commute_two: 34)

coffee5 = Venue.create!(
  name: "The Espresso Room",
  review_count: (60..400).to_a.sample,
  rating: rand(3.0..5.0).round(1),
  photo: "https://media-cdn.tripadvisor.com/media/photo-s/13/d5/64/e1/counter-area.jpg" ,
  price: "$" * (1..5).to_a.sample,
  address: "24 New Row, Covent Garden, London WC2N 4LA",
  category: "Coffeeshop" ,
  phone: Faker::PhoneNumber.phone_number,
  url: "https://theespressoroom.london/" ,
  commute_one: 37,
  commute_two: 32)

# -------------------------USERS----------------------------------

puts "Creating users"
molly = User.create!( first_name: "Molly", last_name: "D'Aguilar",password: "123123", email: "mdaguilar66@gmail.com")
bruno = User.create!(first_name: "Bruno", last_name: "Adenis",password: "123123", email: "adenis.bruno@hotmail.com")
cecilia = User.create!(first_name: "Cecilia", last_name: "Marcellesi",password: "123123", email: "ceciliamarcellesi@gmail.com")
lucas = User.create!(first_name: "Lucas", last_name: "Chanet",password: "123123", email: "lucaschanet@gmail.com")


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


