# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..20
  Toy.create(
    name: Faker::Superhero.name,
    description: Faker::Lorem.sentence(word_count: 20, random_words_to_add: 180),
    post_date: Faker::Date.in_date_period,
  )
  puts "Created #{i} toy(s)"
end