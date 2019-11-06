# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '017631540910',
    category:        'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '01703833336',
    category:        'italian'
  },
  {
    name:         'Seafoodbar',
    address:      'Van Baerlestraat 5, 1071 AL Amsterdam',
    phone_number:  '01718159224',
    category:        'japanese'
  },
  {
    name:         'Uptown Meatclub',
    address:      'Van Baerlestraat 3, 1071 AL Amsterdam',
    phone_number:  '01752260885',
    category:        'belgian'
  },
  {
    name:         'Salad Burgers',
    address:      '14 Hope Avenue, Durban, South Africa, 4001',
    phone_number:  '02227904194',
    category:       'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
