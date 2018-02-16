class Queens
	attr_accessor :array

	def initialize(hash={white: [0, 3], black: [7, 3]})
		if hash[:white] ==hash[:black]
			raise ArgumentError
		end
		@hash = hash
		@array = []
		8.times{
			tmp = []
			8.times{
				tmp.push("O")
			}
			@array.push(tmp)
		}
		# binding.pry
		@array[hash[:white][0]][hash[:white][1]] = "W"
		@array[hash[:black][0]][hash[:black][1]] = "B"
	end

	def white
		@hash[:white]
	end

	def black
		@hash[:black]
	end

	def to_s
		result = []
		@array.each do |mini_arr|
			tmp = mini_arr.join(" ")
			result.push(tmp)
		end
		return result.join("\n")
	end

	def attack?
		if @hash[:white][0] == @hash[:black][0] ||
		 @hash[:white][1] == @hash[:black][1] ||
		 @hash[:white][0] - @hash[:black][0] == @hash[:white][1] - @hash[:black][1]
			return true
		else
			return false
		end

	end
end