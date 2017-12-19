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
puts heroes