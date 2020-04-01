class Trip < ApplicationRecord
  validates_presence_of :name, :start_date, :end_date

  has_many :trails
end

# - Visitors will go on many hiking trips
# - Each hiking trip is made up of one or more trails
# - A trail may be part of more than one hiking trip
