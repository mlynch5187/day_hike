class TripTrail < ApplicationRecord

  belongs_to :trip
  belongs_to :trail
end

# - Visitors will go on many hiking trips
# - Each hiking trip is made up of one or more trails
# - A trail may be part of more than one hiking trip
