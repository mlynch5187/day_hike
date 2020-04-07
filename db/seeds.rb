# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@big_mountain = Trip.create(name: "Big Mountain Trail", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
@white_waters = Trip.create(name: "White Waters Trail", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
@green_forest = Trip.create(name: "Green Forest Adventure", start_date: DateTime.now, end_date: DateTime.now.tomorrow)

@grizzly_way = Trail.create(length: 300, name: "Grizzly Way", address: "4380 Grizzly Way" )
@fishermans_pike = Trail.create(length: 230, name: "Fisherman's Pike", address: "5910 Rainbow Lane")
@sun_dried_trail = Trail.create(length: 340, name: "Sun-Dried Trail", address: "4920 Kipp's Parkway")
@gullivers_gulch = Trail.create(length: 400, name: "Gulliver's Gulch", address: "1203 Dorsey Road")

TripTrails.create(trip_id: @bigmountain.id, trail_id: @grizzly_way.id)
TripTrails.create(trip_id: @white_waters.id, trail_id: @fishermans_pike.id)
TripTrails.create(trip_id: @green_forest.id, trail_id: @sun_dried_trail.id)
TripTrails.create(trip_id: @green_forest.id, trail_id: @gullivers_gulch.id)
