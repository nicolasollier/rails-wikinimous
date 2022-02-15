# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "💥 Cleaning DB ..."

Article.destroy_all

puts "🌱 Seeding Database ..."

30.times do
  Article.create(title: Faker::Book.title, content: Faker::Lorem.paragraph_by_chars(number: 4200, supplemental: true))
  puts "🪄 Add 1 article ..."
end

puts "✅ Done!"
