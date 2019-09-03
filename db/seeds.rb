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
    phone_number: '(44)567 789 123',
    category:     'french'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '(44)123456789',
    category:     'italian'
  }
]
Restaurant.create!(restaurants_attributes)

puts 'Creating reviews...'
reviews_attributes = [
  {
    restaurant_id: 14,
    content: 'Not something special, but rather good',
    rating: 3
  },
  {
    restaurant_id: 14,
    content: 'Rather good',
    rating: 4
  },
  {
    restaurant_id: 15,
    content: 'Excellent!',
    rating: 5
  },
  {
    restaurant_id: 15,
    content: 'May be a little better',
    rating: 4
  }
]
Review.create!(reviews_attributes)
puts 'Finished!'
