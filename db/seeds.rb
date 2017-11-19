# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USERS
User.create(email: 'jamesonbass@gmail.com', password: 'password', first_name: 'Jameson', last_name: "Bass")
User.create(email: 'meganbass@gmail.com', password: 'password', first_name: 'Megan', last_name: "Bass")


# CATEGORIES
20.times do
  Category.create(name: Faker::Commerce.department)
end

# TAGS
30.times do
  Tag.create(name: Faker::Hipster.words)
end

#LISTINGS

20.times do
  Listing.create(title: Faker::Commerce.product_name, description: Faker::Hipster.paragraph , price: Faker::Commerce.price)
end
