class LocationRecord < ApplicationRecord
  belongs_to :location
  belongs_to :specie
end
