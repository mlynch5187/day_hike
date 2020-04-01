require 'rails_helper'

RSpec.describe "test trips index page", type: :feature do
  before(:each) do # load "#{Rails.root}/db/seeds.rb"
    @big_mountain = Trip.create(name: "Big Mountain Trail", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
    @white_waters = Trip.create(name: "White Waters Trail", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
    @green_forest = Trip.create(name: "Green Forest Adventure", start_date: DateTime.now, end_date: DateTime.now.tomorrow)

    @grizzly_way = Trail.create(name: "Grizzly Way", distance: 300, address: "4380 Grizzly Way" )
    @fishermans_



    TripTrails.create(trip_id: @bigmountain.id, trail_id: @grizzly_way.id)
  end

  it "shows total hiking distance of all trails on trip" do

    visit "/trips/#{@big_mountain.id}"



  end
end








# User Story 4 of 10
#
# As a visitor,
# when I visit a hiking trip's page,
# I see the total hiking distance
# of all trails on that hiking trip
