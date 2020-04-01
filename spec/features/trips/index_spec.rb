require 'rails_helper'

RSpec.describe "test trips index page", type: :feature do
  before(:each) do # load "#{Rails.root}/db/seeds.rb"
    @big_mountain = Trip.create(name: "Big Mountain Trail", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
    @white_waters = Trip.create(name: "White Waters Trail", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
    @green_forest = Trip.create(name: "Green Forest Adventure", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
  end

  it "lists all hiking trip names" do

    visit "/trips"

    expect(page).to have_content("#{@big_mountain.name}")
    expect(page).to have_content("#{@white_waters.name}")
    expect(page).to have_content("#{@green_forest.name}")
  end

  it "trip names link to trip show page" do

    visit "/trips"

    click_link "#{@big_mountain.name}"

    visit "/trips"

    click_link "#{@white_waters.name}"

    visit "/trips"
    
    click_link "#{@green_forest.name}"
  end
end



# As a visitor,
# when I visit the hiking trips index page,
# and I click on the name of a hiking trip,
# I see a unique page for that hiking trip.


# create_table "trails", force: :cascade do |t|
#   t.integer "length"
#   t.string "name"
#   t.string "address"
# end
#
# create_table "trips", force: :cascade do |t|
#   t.string "name"
#   t.datetime "start_date"
#   t.datetime "end_date"
# end
