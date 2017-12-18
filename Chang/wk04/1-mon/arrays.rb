# require 'pry'

days_of_the_week = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']

# My calendar says the first day is Sunday...
days_of_the_week_new = days_of_the_week.clone
moveElem = days_of_the_week_new.pop()

days_of_the_week_new.unshift(moveElem);

puts days_of_the_week_new

# Create a new array of the days of the week
newArr = [days_of_the_week.slice(0,5),days_of_the_week.slice(-2,2)]

puts "newArr=#{newArr}"

# remove weekend days
newArr.slice!(1,1)

puts "newArr=#{newArr}"

newArr[0].sort!
puts "newArr=#{newArr}"

# binding.pry