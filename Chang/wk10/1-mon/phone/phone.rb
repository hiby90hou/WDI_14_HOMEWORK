# number = Phone.new("(123) 456-7890").number
class Phone
	def initialize(string)
		@number = string.gsub(/[^0-9]/, '')
		if @number.length > 10 && @number[0] == '1'
			num_arr = @number.split("")
			num_arr.shift
			@number = num_arr.join
		elsif @number.length > 10 || @number.length < 10
			@number = '0000000000'
		end
	end
	
	def number
		@number
	end

	def area_code
		@number.slice(0,3)
	end

	def to_s
		# "(123) 456-7890"
		"(#{@number.slice(0,3)}) #{@number.slice(3,3)}-#{@number.slice(6,4)}"
	end

end