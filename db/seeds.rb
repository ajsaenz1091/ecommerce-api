# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Item.destroy_all
User.destroy_all
Cart.destroy_all
CartItem.destroy_all
puts "Destroyed data"
puts "Seeding Categories..."

categories = [
    {
        id: 1,
        title: "Hats",
        routeName: "hats"
    },
    {
        id: 2,
        title: "Sneakers",
        routeName: "sneakers"
    },
    {
        id: 3,
        title: "Jackets",
        routeName: "jackets"
    },
    {
        id: 4,
        title: "Womens",
        routeName: "womens"
    },
    {
        id: 5,
        title: "Mens",
        routeName: "mens"
    }
]

categories.each{|cat| Category.create(title: cat[:title], route_name: cat[:routeName])}

puts "Seeding Items..."

hats = [
    {
      id: 1,
      name: "Brown Brim",
      imageUrl: "https://i.ibb.co/ZYW3VTp/brown-brim.png",
      price: 25
    },
    {
      id: 2,
      name: "Blue Beanie",
      imageUrl: "https://i.ibb.co/ypkgK0X/blue-beanie.png",
      price: 18
    },
    {
      id: 3,
      name: "Brown Cowboy",
      imageUrl: "https://i.ibb.co/QdJwgmp/brown-cowboy.png",
      price: 35
    },
    {
      id: 4,
      name: "Grey Brim",
      imageUrl: "https://i.ibb.co/RjBLWxB/grey-brim.png",
      price: 25
    },
    {
      id: 5,
      name: "Green Beanie",
      imageUrl: "https://i.ibb.co/YTjW3vF/green-beanie.png",
      price: 18
    },
    {
      id: 6,
      name: "Palm Tree Cap",
      imageUrl: "https://i.ibb.co/rKBDvJX/palm-tree-cap.png",
      price: 14
    },
    {
      id: 7,
      name: "Red Beanie",
      imageUrl: "https://i.ibb.co/bLB646Z/red-beanie.png",
      price: 18
    },
    {
      id: 8,
      name: "Wolf Cap",
      imageUrl: "https://i.ibb.co/1f2nWMM/wolf-cap.png",
      price: 14
    },
    {
      id: 9,
      name: "Blue Snapback",
      imageUrl: "https://i.ibb.co/X2VJP2W/blue-snapback.png",
      price: 16
    }
  ]

  hats.each{|hat| Item.create(category_id: 1, name: hat[:name], img_url: hat[:imageUrl], price: hat[:price], quantity: 0)}

  sneakers = [
    {
      id: 1,
      name: "Adidas NMD",
      imageUrl: "https://i.ibb.co/0s3pdnc/adidas-nmd.png",
      price: 220
    },
    {
      id: 2,
      name: "Adidas Yeezy",
      imageUrl: "https://i.ibb.co/dJbG1cT/yeezy.png",
      price: 280
    },
    {
      id: 3,
      name: "Black Converse",
      imageUrl: "https://i.ibb.co/bPmVXyP/black-converse.png",
      price: 110
    },
    {
      id: 4,
      name: "Nike White AirForce",
      imageUrl: "https://i.ibb.co/1RcFPk0/white-nike-high-tops.png",
      price: 160
    },
    {
      id: 5,
      name: "Nike Red High Tops",
      imageUrl: "https://i.ibb.co/QcvzydB/nikes-red.png",
      price: 160
    },
    {
      id: 6,
      name: "Nike Brown High Tops",
      imageUrl: "https://i.ibb.co/fMTV342/nike-brown.png",
      price: 160
    },
    {
      id: 7,
      name: "Air Jordan Limited",
      imageUrl: "https://i.ibb.co/w4k6Ws9/nike-funky.png",
      price: 190
    },
    {
      id: 8,
      name: "Timberlands",
      imageUrl: "https://i.ibb.co/Mhh6wBg/timberlands.png",
      price: 200
    }
  ]

  sneakers.each{|item| Item.create(category_id: 2, name: item[:name], img_url: item[:imageUrl], price: item[:price], quantity: 0)}

  jackets = [
    {
      id: 1,
      name: "Black Jean Shearling",
      imageUrl: "https://i.ibb.co/XzcwL5s/black-shearling.png",
      price: 125
    },
    {
      id: 2,
      name: "Blue Jean Jacket",
      imageUrl: "https://i.ibb.co/mJS6vz0/blue-jean-jacket.png",
      price: 90
    },
    {
      id: 3,
      name: "Grey Jean Jacket",
      imageUrl: "https://i.ibb.co/N71k1ML/grey-jean-jacket.png",
      price: 90
    },
    {
      id: 4,
      name: "Brown Shearling",
      imageUrl: "https://i.ibb.co/s96FpdP/brown-shearling.png",
      price: 165
    },
    {
      id: 5,
      name: "Tan Trench",
      imageUrl: "https://i.ibb.co/M6hHc3F/brown-trench.png",
      price: 185
    }
  ]

  jackets.each{|item| Item.create(category_id: 3, name: item[:name], img_url: item[:imageUrl], price: item[:price], quantity: 0)}

  womens = [
    {
      id: 1,
      name: "Blue Tanktop",
      imageUrl: "https://i.ibb.co/7CQVJNm/blue-tank.png",
      price: 25
    },
    {
      id: 2,
      name: "Floral Blouse",
      imageUrl: "https://i.ibb.co/4W2DGKm/floral-blouse.png",
      price: 20
    },
    {
      id: 3,
      name: "Floral Dress",
      imageUrl: "https://i.ibb.co/KV18Ysr/floral-skirt.png",
      price: 80
    },
    {
      id: 4,
      name: "Red Dots Dress",
      imageUrl: "https://i.ibb.co/N3BN1bh/red-polka-dot-dress.png",
      price: 80
    },
    {
      id: 5,
      name: "Striped Sweater",
      imageUrl: "https://i.ibb.co/KmSkMbH/striped-sweater.png",
      price: 45
    },
    {
      id: 6,
      name: "Yellow Track Suit",
      imageUrl: "https://i.ibb.co/v1cvwNf/yellow-track-suit.png",
      price: 135
    },
    {
      id: 7,
      name: "White Blouse",
      imageUrl: "https://i.ibb.co/qBcrsJg/white-vest.png",
      price: 20
    }
  ]

  womens.each{|item| Item.create(category_id: 4, name: item[:name], img_url: item[:imageUrl], price: item[:price], quantity: 0)}

  mens = [
    {
      id: 1,
      name: "Camo Down Vest",
      imageUrl: "https://i.ibb.co/xJS0T3Y/camo-vest.png",
      price: 325
    },
    {
      id: 2,
      name: "Floral T-shirt",
      imageUrl: "https://i.ibb.co/qMQ75QZ/floral-shirt.png",
      price: 20
    },
    {
      id: 3,
      name: "Black & White Longsleeve",
      imageUrl: "https://i.ibb.co/55z32tw/long-sleeve.png",
      price: 25
    },
    {
      id: 4,
      name: "Pink T-shirt",
      imageUrl: "https://i.ibb.co/RvwnBL8/pink-shirt.png",
      price: 25
    },
    {
      id: 5,
      name: "Jean Long Sleeve",
      imageUrl: "https://i.ibb.co/VpW4x5t/roll-up-jean-shirt.png",
      price: 40
    },
    {
      id: 6,
      name: "Burgundy T-shirt",
      imageUrl: "https://i.ibb.co/mh3VM1f/polka-dot-shirt.png",
      price: 25
    }
  ]

  mens.each{|item| Item.create(category_id: 5, name: item[:name], img_url: item[:imageUrl], price: item[:price], quantity: 0)}

  puts 'Seeding Users....'

  names = ['Alberto','Ethan','Max','Tyler']

  names.each{|name| User.create(username: name)}

  puts 'Seeding carts...'

  names.each.with_index(1){|name,idx| Cart.create(user_id:idx)}

  puts 'Seeding cart_itmes...'

  70.times do
    CartItem.create(cart_id: rand(1..5), item_id: rand(1..35))
  end

  puts 'Done...'