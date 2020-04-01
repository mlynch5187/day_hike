class Trail < ApplicationRecord
  validates_presence_of :name, :address, :length
  validates_numericality_of :length, only_integer: true, greater_than: 0

  has_many :trip_trails
  has_many :trips, through: :trip_trails
end


# - Visitors will go on many hiking trips
# - Each hiking trip is made up of one or more trails
# - A trail may be part of more than one hiking trip
