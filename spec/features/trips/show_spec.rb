require 'rails_helper'

RSpec.describe "test trips index page", type: :feature do
  before(:each) do # load "#{Rails.root}/db/seeds.rb"
    @big_mountain = Trip.create(name: "Big Mountain Trail", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
    @white_waters = Trip.create(name: "White Waters Trail", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
    @green_forest = Trip.create(name: "Green Forest Adventure", start_date: DateTime.now, end_date: DateTime.now.tomorrow)

    @grizzly_way = Trail.create(length: 300, name: "Grizzly Way", address: "4380 Grizzly Way" )
    @fishermans_pike = Trail.create(length: 230, name: "Fisherman's Pike", address: "5910 Rainbow Lane")
    @sun_dried_trail = Trail.create(length: 340, name: "Sun-Dried Trail", address: "4920 Kipp's Parkway")
    @gullivers_gulch = Trail.create(length: 400, name: "Gulliver's Gulch", address: "1203 Dorsey Road")

    TripTrail.create!(trip_id: @big_mountain.id, trail_id: @grizzly_way.id)
    TripTrail.create!(trip_id: @white_waters.id, trail_id: @fishermans_pike.id)
    TripTrail.create!(trip_id: @green_forest.id, trail_id: @sun_dried_trail.id)
    TripTrail.create!(trip_id: @green_forest.id, trail_id: @gullivers_gulch.id)
  end

  it "shows total hiking distance of all trails on trip" do
    visit "/trips/#{@big_mountain.id}"


    expect(page).to have_content("300")

    visit "/trips/#{@white_waters.id}"

    expect(page).to have_content("230")

    visit "/trips/#{@green_forest.id}"
        
    expect(page).to have_content("740")
  end
end

# User Story 4 of 10
#
# As a visitor,
# when I visit a hiking trip's page,
# I see the total hiking distance
# of all trails on that hiking trip
