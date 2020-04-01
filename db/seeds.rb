# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

big_mountain = Trip.create(length: 200, name: "Big Mountain Trail", address: "4389 Mountainside Trail")
white_waters = Trip.create(length: 150, name: "White Waters Trail", address: "3840 Waterview Way" )
green_forest = Trip.create(length: 125, name: "Green Forest Adventure", address: "90129 Green Forest Road" )
