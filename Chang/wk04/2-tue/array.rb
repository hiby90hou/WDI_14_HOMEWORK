planeteers = ["Earth", "Wind", "Captain Planet", "Fire", "Water"]

#Access the second value in planeteers.
# puts planeteers[1]

#Add "Heart" to the end of planeteers.
planeteers.push("Heart")

# puts planeteers

# Remove "Captain Planet" from the array (without using a method).
planeteers -= ["Captain Planet"]

# puts planeteers

# Combine planeteers with rangers = ["Red", "Blue", "Pink", "Yellow", "Black"] and save the result in a variable called heroes.
rangers = ["Red", "Blue", "Pink", "Yellow", "Black"]
heroes = planeteers + rangers

# puts heroes

# Alphabetize the contents of heroes using a method
heroes.sort!
# puts heroes


# Randomize the contents of heroes using a method. 
heroes.shuffle!
# puts heroes

# Select a random element from heroes using a method. 
randomElem = heroes.sample

# puts randomElem

# Select all elements in heroes that begin with "B" using a method.
result = heroes.select do |elem|
  elem =~ /^B/
end

# puts result

# Hashes
ninja_turtle = {
	name:'Michelangelo',
	weapon:'Nunchuks',
	radical: true
}

ninja_turtle[:age] = 16

# puts ninja_turtle

ninja_turtle.delete(:radical)

# puts ninja_turtle

ninja_turtle[:pizza_toppings] = ["cheese", "pepperoni", "peppers"]

# Access the first element of pizza_toppings.
# puts ninja_turtle[:pizza_toppings][0]

# Produce an array containing all of ninja_turtle's keys using a method.
# puts ninja_turtle.keys

# Print out each key-value pair in the following format - "KEY's is equal to VALUE"
ninja_turtle.each {|key,value|
	puts "#{key} is equal to #{value}"
}