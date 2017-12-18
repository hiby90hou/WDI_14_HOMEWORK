require 'pry'
puts "please choose the maximum value"
maxNum = gets.to_i
rightNumber = rand(0..maxNum)

puts rightNumber

puts "guess a number"

guessNumber = gets.to_i

while guessNumber != rightNumber
	if guessNumber > rightNumber then
		puts "Your guess is too big!"
	else
		puts "Your guess is too small!"
	end
	puts "guess again"
	guessNumber = gets.to_i
end

puts "congratulation! You are right!"

binding.pry