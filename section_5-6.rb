#June 27, 2013
#Full name greeting
firstName = ""
middleName = ""
lastName = ""

puts "What is your first name?"
firstName = gets.chomp
puts "What is your middle name?"
middleName = gets.chomp
puts "What is your last name?"
lastName = gets.chomp
puts "Hello, #{firstName} #{middleName} #{lastName}!"

#Bigger, better, favorite number
favoriteNumber = ""
puts "What's your favorite number?"
favoriteNumber = gets.chomp
biggerNumber = favoriteNumber.to_i + 1
puts "Perhaps you would prefer #{biggerNumber}?"

#Now I want to commit this change, yes