# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trip.create(location: "Guatemala", start_date: Date.new(2021,7,23), end_date: Date.new(2021,7,30), price: "2000")
Trip.create(location: "Amazónia", start_date: Date.new(2021,7,23), end_date: Date.new(2021,7,30), price: "2500")