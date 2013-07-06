# Preston Copeland
# July 5, 2013
# Tealeaf course 1
# Pine's 'How to Program,' ch. 13

# Interactive baby dragon. Write a program that lets you enter
# commands such as feed and walk and calls those methods on your dragon.
# Of course, since you are inputting just strings, you will need some
# sort of method dispatch, where your program checks which string was
# entered and then calls the appropriate method.

puts "Your baby dragon is born!"
puts "Give him or her a name:"
dragon_name = gets.chomp
baby = Dragon.new(dragon_name)

while true
  puts "What would you like to do with #{dragon_name}?"
  puts "1) feed"
  puts "2) walk"
  puts "3) put to bed"
  puts "4) rock"
  puts "5) toss"
  puts "6) quit"
  action = gets.chomp.downcase

  break if(action=="quit")

  case action
  when "feed" then baby.feed
  when "walk" then baby.walk
  when "put to bed" then baby.put_to_bed
  when "rock" then baby.rock
  when "toss" then baby.toss
  else puts "Sorry, there's an error!"
  end

end

puts "#{dragon_name} says goodbye!"




















