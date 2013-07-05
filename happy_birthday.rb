# Preston Copeland
# July 4, 2013
# Tealeaf course 1

# Chris Pine's 'How to Program,' ch. 12

# Happy birthday! Happy birthday! Ask what year a person was born in, then the month, and then the day.
# Figure out how old they are, and give them a big SPANK! for each birthday they have had.

def seconds_to_years(seconds)
  (seconds * (1/60.0) * (1/60.0) * (1/24.0) * (1/365.0)).to_i
end

puts "In what year were you born?"
year = gets.chomp

puts "Which month? (Use a number, please.)"
month = gets.chomp

puts "Which day?"
day = gets.chomp

user_birthday = Time.local(year, month, day)
now = Time.new
elapsed_time = (now-user_birthday).abs
user_age = seconds_to_years(elapsed_time)

user_age.times do |year|
  puts "#{year+1}. Birthday spank!"
end

