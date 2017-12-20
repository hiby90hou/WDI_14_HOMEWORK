require 'pry'
class Calculator

	# def initialize(num1,num2)
	# 	@num1=num1
	# 	@num2=num2
	# end

	def initialize(numberArr)
		@numberArr = numberArr
	end

  def plus()
  	show_calculation = ''
  	total_num = 0.0
  	@numberArr.each{|num|
  		show_calculation = show_calculation + num.to_s + " + "
  		total_num += num
  	}
  	show_calculation.reverse!.sub!("+","=").reverse!

  	puts "#{show_calculation}#{total_num}"

  	# total_num = @num1+@num2
  	# puts "#@num1 + #@num2 = #{total_num}"
  end

  def minus()
  	show_calculation = ''
  	total_num = 0.0
  	@numberArr.each_with_index{|num, index|
  		show_calculation = show_calculation + num.to_s + " - "
  		if index==0
  			total_num = num
  		else
  			total_num -= num
  		end
  	}
  	show_calculation.reverse!.sub!("-","=").reverse!

  	puts "#{show_calculation}#{total_num}"
  	# total_num = @num1-@num2
  	# puts "#@num1 - #@num2 = #{total_num}"
  end

  def multiply()
  	show_calculation = ''
  	total_num = 0.0
  	@numberArr.each_with_index{|num, index|
  		show_calculation = show_calculation + num.to_s + " * "
  		if index==0
  			total_num = num
  		else
  			total_num = total_num*num
  		end
  	}
  	show_calculation.reverse!.sub!("*","=").reverse!

  	puts "#{show_calculation}#{total_num}"  	
  	# total_num = @num1*@num2
  	# puts "#@num1 * #@num2 = #{total_num}"
  end

  def divide()
  	show_calculation = ''
  	total_num = 0.0
  	@numberArr.each_with_index{|num, index|
  		show_calculation = show_calculation + num.to_s + " / "
  		if index==0
  			total_num = num
  		else
  			total_num = total_num/num
  		end
  	}
  	show_calculation.reverse!.sub!("/","=").reverse!

  	puts "#{show_calculation}#{total_num}"  
  	# total_num = (@num1)/(@num2)
  	# puts "#@num1 / #@num2 = #{total_num}"
  end

  def exponents()
  	total_num = @numberArr[0] ** @numberArr[1]
  	puts "(#{@numberArr[0]} )#{@numberArr[1]} = #{total_num}"
  end

  def square_roots()
  	total_num = @numberArr[0] ** (1.0/(@numberArr[1]))
  	puts "#{@numberArr[0]}'s #{@numberArr[1]} square_roots is #{total_num}"
  end
end

methodArr = Calculator.instance_methods(false)
puts "please input a number to choose method or press q to exit"
line = ''
50.times{line+="-"}
puts line
methodArr.each_with_index {|method,index|
	space = ''
	(50-method.length-15).times{space+=" "}
	puts "|#{index+1}.        | #{method}#{space} |"
	puts line
}


operation_selection = gets.strip

while(operation_selection.strip  != "q")
	puts "Please input number Array (separator is ',')"
	numberArr = gets.strip.split(',').collect { |num| num.to_f } 
	while numberArr.length<2
		puts "Please input number Array (separator is ','), this array must at least contain 2 numbers"
		numberArr = gets.strip.split(',').collect { |num| num.to_f } 
	
	end
	# number1 = numberArr[0]
	# number2 = numberArr[1]
	# cal1 = Calculator.new(number1,number2)
	cal1 = Calculator.new(numberArr)

	case operation_selection
	when "1"
		cal1.plus()
  when "2"
  	cal1.minus()
  when "3"
  	cal1.multiply()
  when "4"
  	cal1.divide()
  when "5"
  	cal1.exponents()
  when "6"
  	cal1.square_roots()
  else
  	puts "Do not have this function"
  end
	puts "please input a number to choose method or press q to exit"
	line = ''
	50.times{line+="-"}
	puts line
	methodArr.each_with_index {|method,index|
		space = ''
		(50-method.length-15).times{space+=" "}
		puts "|#{index+1}.        | #{method}#{space} |"
		puts line
	}
	operation_selection = gets.strip
end
# binding.pry