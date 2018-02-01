class Location < ApplicationRecord
	has_many :location_records
	has_many :species, :through => :location_records
end
