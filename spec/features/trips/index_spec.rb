require 'rails_helper'

RSpec.describe "test trips index page", type: :feature do
  it "lists all hiking trip names" do
    # load "#{Rails.root}/db/seeds.rb"
    big_mountain = Trip.create(name: "Big Mountain Trail", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
    white_waters = Trip.create(name: "White Waters Trail", start_date: DateTime.now, end_date: DateTime.now.tomorrow)
    green_forest = Trip.create(name: "Green Forest Adventure", start_date: DateTime.now, end_date: DateTime.now.tomorrow)

    visit "/trips"

    expect(page).to have_content("#{big_mountain.name}")
    expect(page).to have_content("#{white_waters.name}")
    expect(page).to have_content("#{green_forest.name}")
  end
end








# User Story 1 of 10
#
# As a visitor,
# when I visit the hiking trips index page,
# I see a list of all hiking trip names in
# the database.

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
