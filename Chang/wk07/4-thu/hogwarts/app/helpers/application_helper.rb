module ApplicationHelper
	def find_house(house_id)
		House.find_by(id:house_id).name
	end

	def sorting_hat
		house_id=rand(1..4)  
	end
end
