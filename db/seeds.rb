# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

Cocktail.destroy_all if Rails.env.development?
puts "Destroying all Cocktails"

Ingredient.destroy_all if Rails.env.development?
puts "Destroying all Ingredients"

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)

ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "Create #{i.name}"
end

file = URI.open('https://www.196flavors.com/wp-content/uploads/2018/09/cuba-libre-1.jpg')
cuba_libre = Cocktail.create(name: 'Cuba Libre')
cuba_libre.photo.attach(io: file, filename: 'cuba_libre.png', content_type: 'image/png')
puts 'Create Cuba Libre'

file = URI.open('https://uploads.nonsprecare.it/wp-content/uploads/2017/08/ricetta-gin-tonic.jpg')
gin_lemon = Cocktail.create(name: 'Gin Lemon')
gin_lemon.photo.attach(io: file, filename: 'gin_lemon.png', content_type: 'image/png')
puts 'Create Gin Lemon'

file = URI.open('https://i.pinimg.com/564x/d3/24/7c/d3247c4deddcf36c5a9ba02388145339.jpg')
martini_bombay = Cocktail.create(name: 'Martini Bombay')
martini_bombay.photo.attach(io: file, filename: 'martini_bombay.png', content_type: 'image/png')
puts 'Create Martini Bombay'

file = URI.open('https://www.maxxium.nl/wp-content/uploads/2017/08/Hendricks-Gin-Tonic-Sfeer-3-e1502961008983-882x663.jpg')
hendrix_tonic = Cocktail.create(name: 'Hendrix Tonic')
hendrix_tonic.photo.attach(io: file, filename: 'hendrix_tonic.png', content_type: 'image/png')
puts 'Create Hendrix Tonic'

file = URI.open('https://thumbs.dreamstime.com/b/aluminium-can-red-bull-energy-drink-ice-drops-vodka-absolut-most-popular-world-redbull-156680207.jpg')
vodka_redbull = Cocktail.create(name: 'Vodka Redbull')
vodka_redbull.photo.attach(io: file, filename: 'vodka_redbull.png', content_type: 'image/png')
puts 'Create Vodka Redbull'

file = URI.open('https://www.giallozafferano.it/images/ricette/2/291/foto_hd/hd450x300.jpg')
caipiroska = Cocktail.create(name: 'Caipiroska')
caipiroska.photo.attach(io: file, filename: 'caipiroska.png', content_type: 'image/png')
puts 'Create Caipiroska'

file = URI.open('http://www.fnstatic.it/images/content/recipe/ccgdd413-caipirinha-recipe-s4x3-jpg_3.jpeg')
caipirinha = Cocktail.create(name: 'Caipirinha')
caipirinha.photo.attach(io: file, filename: 'caipirinha.png', content_type: 'image/png')
puts 'Create Caipirinha'

file = URI.open('https://www.bbcgoodfood.com/sites/default/files/recipe_images/pisco-sour.jpg')
pisco_sour = Cocktail.create(name: 'Pisco Sour')
pisco_sour.photo.attach(io: file, filename: 'pisco_sour.png', content_type: 'image/png')
puts 'Create Pisco Sour'

file = URI.open('https://img1.jamieoliver.com/jamieoliver/home/wp-content/uploads/features-import/2014/11/feature-header14.jpg')
espresso_martini = Cocktail.create(name: 'Espresso Martini')
espresso_martini.photo.attach(io: file, filename: 'espresso_martini.png', content_type: 'image/png')
puts 'Create Espresso Martini'
