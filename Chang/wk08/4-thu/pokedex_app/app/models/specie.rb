class Specie < ApplicationRecord
	has_many :location_records
	has_many :locations, :through => :location_records
end
