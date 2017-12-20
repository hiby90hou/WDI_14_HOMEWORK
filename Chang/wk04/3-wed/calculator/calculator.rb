require 'pry'
class Calculator

	def initialize(num1,num2)
		@num1=num1
		@num2=num2
	end

  def plus()
  	total_num = @num1+@num2
  	puts "#@num1 + #@num2 = #{total_num}"
  end

  def minus()
  	total_num = @num1-@num2
  	puts "#@num1 - #@num2 = #{total_num}"
  end
  def multiply()
  	total_num = @num1*@num2
  	puts "#@num1 * #@num2 = #{total_num}"
  end
  def divide()
  	total_num = (@num1)/(@num2)
  	puts "#@num1 / #@num2 = #{total_num}"
  end
  def exponents()
  	total_num = @num1 ** @num2
  	puts "(#@num1 )#@num2 = #{total_num}"
  end
  def square_roots()
  	total_num = @num1 ** (1.0/(@num2))
  	 puts "square_roots is #{total_num}"
  end
end

methodArr = Calculator.instance_methods(false)
puts "please input a number to choose method or press q to exit"
methodArr.each_with_index {|method,index|
	puts "#{index+1}. #{method}"
}

operation_selection = gets.strip

while(operation_selection.strip  != "q")
	puts "Please input number1"
	number1 = gets.strip.to_f
	
	puts "Please input number2"
	number2 = gets.strip.to_f
	cal1 = Calculator.new(number1,number2)

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
	methodArr.each_with_index {|method,index|
		puts "#{index+1}. #{method}"
	}
	operation_selection = gets.strip
end
# binding.pry