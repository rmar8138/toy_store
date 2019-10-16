# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#############
# USER SEED #
#############

for i in 1..40
  User.create(
    email: Faker::Internet.email,
    password: "password"
  )
  puts "#{i} user(s) created!"
end

#####################
# MANUFACTURER SEED #
#####################

for i in 1..10
  Manufacturer.create(
    name: Faker::Company.name,
    location: Faker::Address.country
  )
  puts "#{i} manufacturer(s) created!"
end

#################
# CATEGORY SEED #
#################

for i in 1..20
  Category.create(
    name: Faker::Game.genre
  )
  puts "#{i} categorie(s) created!"
end

############
# TOY SEED #
############

all_user_ids = User.pluck(:id)
all_manufacturer_ids = Manufacturer.pluck(:id)

for i in 1..40
  new_toy = Toy.create(
    name: Faker::Superhero.name,
    description: Faker::Lorem.sentence(word_count: 20, random_words_to_add: 180),
    post_date: Faker::Date.in_date_period,
    user_id: all_user_ids.sample,
    manufacturer_id: all_manufacturer_ids.sample
  )

  sample_categories = Category.pluck(:id).sample(rand(1..4))
  
  for category_id in sample_categories
    CategoriesToy.create(
      category_id: category_id,
      toy_id: new_toy.id
    )
  end
  puts "Created #{i} toy(s)"
end