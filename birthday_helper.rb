# Preston Copeland
# July 5, 2013
# Tealeaf course 1

# Birthday helper!
=begin

Birthday helper! Write a program to read in names and birth dates from a text file.
It should then ask you for a name. You type one in, and it tells you when that person’s next
birthday will be (and, for the truly adventurous, how old they will be). The input file should look something like this:
Christopher Alexander,  Oct  4, 1936
Christopher Lambert, Mar 29, 1957
Christopher Lee, May 27, 1922
Christopher Lloyd, Oct 22, 1938
Christopher Pine, Aug  3, 1976
Christopher Plummer, Dec 13, 1927
Christopher Walken, Mar 31, 1943
The King of Spain, Jan  5, 1938

(That would be me Christopher Pine, not the young James T. Kirk; I don’t care when he was born.)
You’ll probably want to break each line up and put it in a hash, using the name as your key and
the date as your value. In other words: words:
birth_dates['The King of Spain'] = 'Jan 5, 1938'
(You can store the date in some other format if you prefer.)
Though you can do it without this tip, your program might look prettier if you use the each_line method for strings.
It works pretty much like each does for arrays, but it returns each line of the multiline string one at a time
(but with the line endings, so you might need to chomp them). Just thought I’d mention it....
=end

puts "Enter the file name."
filename = gets.chomp
read_string = File.read filename

b_day_hash = {}

read_string.each_line do |line|
  birth_array = line.split(',')
  name = birth_array.shift
  b_day_hash[name] = birth_array
end

while true
  puts "Which person's birthday would you like?"
  puts "I will tell you his next birthday: "
  person = gets.chomp
  puts "His next birthday is #{b_day_hash[person].first}, 2013."
  puts "He will be #{2013-b_day_hash[person].last.to_i} years old,"
  puts "give or take a year."

  puts "Go again?(Y/N)"
  go_again = gets.chomp
  break unless go_again=="Y"
end

puts "Goodbye!"
