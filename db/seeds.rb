# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
# 50.times do
#   ingredient1 = Ingredient.new
#   ingredient1.name = Faker::Food.ingredient
#   ingredient1.save
#   ingredient2 = Ingredient.new
#   ingredient2.name = Faker::Food.spice
#   ingredient2.save
# end
require 'open-uri'
require 'json'
url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
raw_data = open(url).read
ingredients = JSON.parse(raw_data)
ingredients["drinks"].each do |row|
  row.each do |key,value|
    ingredient = Ingredient.new
    ingredient.name = value
    ingredient.save
  end
end
