# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

users = []
properties = []
categories = ['house', 'apartment', 'villa']
user_number=15



user_number.times do |i|
  users << User.create(email: Faker::Internet.email, password: "azerty1234", password_confirmation: "azerty1234")

  system("clear")
  puts "#{i+1} users created"
  puts "|"+("█"*(i+1))+(" "*((user_number-1)-i))+"|"
end

categories.each_with_index do |category,i|
  Category.create(name:category)
  system("clear")
  puts "#{i+1} category created"
  puts "|"+("█"*(i+1))+(" "*((categories.length-1)-i))+"|"
end

puts ""
puts "Enjoy 🥃 !!!"
puts "----------->"
