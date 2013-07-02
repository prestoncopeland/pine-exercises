#Chris Pine: Learn to Program
#Chapter 2 exercises
#June 26, 2013
=begin
#How many hours in a year?

hrs_in_yr = 24*365
puts "There are this many hours in a year: #{hrs_in_yr}"

#How many minutes in a decade?

decade_in_min = 10*365*24*60
puts "There are this many minutes in a decade: #{decade_in_min}"

#How many seconds old are you?
#born July 25, 1986
age_in_days = 9832
age_in_seconds = age_in_days * 24 * 60 * 60
puts "I am this old in seconds: #{age_in_seconds}"

#Age in seconds to years
def seconds_to_years(seconds)
	(seconds * (1/60.0) * (1/60.0) * (1/24.0) * (1/365.0)).to_i
end

puts "The author's age in years is: #{seconds_to_years(1111000000)}"

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

#6.2
#Angry Boss
puts "Angry boss: 'Well?'"
request = ""
request = gets.chomp
echo = "Whaddaya mean #{request}?!? You're fired!".upcase
puts "Angry boss: '#{echo}'"

#Table of contents
title = "Table of Contents"
ch1 = "Chapter 1: Getting Started"
ch2 = "Chapter 2: Numbers"
ch3 = "Chapter 3: Letters"
pg1 = "page 1"
pg9 = "page 9"
pg13 = "page 13"
puts title.center(40)
puts ch1.ljust(15) + pg1.rjust(32)
puts ch2.ljust(15) + pg9.rjust(40)
puts ch3.ljust(15) + pg13.rjust(40)


#8.3
#building and sorting an array
puts "Enter words separated by pressing return."
puts "Show that you're finished by pressing return without"
puts "entering anything. The entries will then be sorted alphabetically."
words = []
entry = ""
while(true)
	entry = gets.chomp
	if(entry == "")
		break
	else
		words << entry
	end
end

puts words.sort



#table of contents, revisited
#I copied Pine's answer, typing it in, to learn 
#from it
title = "Table of Contents"
chapters = [["Getting Started", 1],
			["Numbers", 9],
			["Letters", 13]]
puts title.center(50)
puts
chapters.each_with_index do |chap, idx|
	name, page = chap
	chap_num = idx + 1
	beginning = "Chapter #{chap_num}: #{name}"
	ending = "page #{page}"

	puts beginning.ljust(30) + ending.rjust(20)
end


#June 28, 2013
#7.5 99 bottles of beer on the wall
bottles = 99
while(bottles >= 1)
	puts "#{bottles} bottles of beer on the wall,"
	puts "#{bottles} bottles of beer,"
	puts "You take one down, and pass it around,"
	puts "#{bottles-1} bottles of beer on the wall."
	bottles -= 1
end


#Deaf Grandma

while(true)
	grandsonReply = gets.chomp
	if(grandsonReply=="BYE")
		break
	elsif(grandsonReply == grandsonReply.upcase)
		year = rand(21) + 1930
		puts "No, not since #{year}!"
	else
		puts "Huh?! Speak up, sonny!"
	end
end


#Deaf Grandma modified
prevAnsw = ""
byeCounter = 0
	while(true)
		answ = gets.chomp
		if(answ=="BYE")
			byeCounter += 1
			if(prevAnsw == "BYE" and byeCounter == 3)
				break
			end
			puts "Huh?! Speak up, sonny!"
		elsif(answ == answ.upcase)
			year = rand(21) + 1930
			puts "No, not since #{year}!"
			byeCounter = 0
		else
			puts "Huh?! Speak up, sonny!"
			byeCounter = 0
		end
		prevAnsw = answ

	end


#revised after peeking at Pine's solution
byeCounter = 0
	while(true)
		answ = gets.chomp
		answ=="BYE"? byeCounter +=1 : byeCounter=0
		break if byeCounter==3

		if(answ == answ.upcase)
			year = rand(21) + 1930
			puts "No, not since #{year}!"
		else
			puts "Huh?! Speak up, sonny!"
		end
	end

puts "Bye, sonny!"


#Leap years

def leapYears(year_start, year_end)
	leapYears = Array.new
	(year_start..year_end).each do |year|
		leapYears << year if(isLeapYear?(year))
	end

	leapYears
end

def isLeapYear?(year)
	if(year%100==0 and year%400==0)
		return true
	end

	if(year%4==0)
		return true
	end

	false
end

=end

#8.3 Arrays
#June 28, 2013
def sortArray
puts "Enter words separated by the return key, and this program will sort them."
puts "When finished, press return without entering anything."
words = Array.new
entry = gets.chomp
while(entry!="")
	words << entry.downcase
	entry = gets.chomp
	end

puts words.sort

end

#9.5 
#ask question
#June 28, 2013

def ask question

	while(true)
		puts question
		response = gets.chomp.downcase
		if(response=="yes")
			return true
		elsif(response=="no")
			return false
		else
			puts "Answer yes or no."
		end
	end
end

#9.5 
#Old school Roman numerals
#June 28, 2013
def oldRoman year

	romanNum = ["M", "D", "C", "L", "X", "V", "I"]
	numbers = [1000, 500, 100, 50, 10, 5, 1]

	yearArray = Array.new
	counter = 0
		
	while(counter<7)
		part = year/numbers[counter]
		yearArray << part
		remainder = year%numbers[counter]
		year = remainder
		counter += 1
	end

	yearArray.each_with_index do |entry, index|
		entry.times do
			print romanNum[index]
		end
	end

	return
end

#9.5
#Modern Roman numerals
#June 29, 2013

def newRoman year
	new_roman_year = ""
	new_roman_year += "M"*(year/1000)
	new_roman_year += if(year%1000/100==9)
								"CM"
							elsif(year%1000/100==4)
								"CD"
							else
								"D"*(year%1000/500)+"C"*(year%500/100)
							end
	new_roman_year += if(year%100/10==4)
								"XL"
							elsif(year%100/10==9)
								"XC"
							else
								"L"*(year%100/50)+"X"*(year%50/10)
							end
	new_roman_year += if(year%10==9)
							"IX"
						elsif(year%10==4)
							"IV"
						else
							"V"*(year%10/5) + "I"*(year%5)
						end
	new_roman_year 

end


#10.2 Sorting
#nonrecursive
#June 28, 2013
	def sortArrayNew array
		
		for i in 0...array.length
			for j in i+1...array.length
				if(array[j]<array[i])
					temp = array[j]
					array[j]=array[i]
					array[i]=temp
				end
			end
		end
		array
	end

#June 29, 2013
#10.2 Sorting
#recursive
def sort some_array # This "wraps" recursive_sort. 
	recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array 
	if(unsorted_array.length==0)
		sorted_array
	else
		min = unsorted_array[0]
		counter=0
		while(counter<unsorted_array.length)
			if(unsorted_array[counter] < min)
				min = unsorted_array[counter]
			end
			counter +=1
		end

		sorted_array << min 
		unsorted_array.delete(min)
		recursive_sort(unsorted_array, sorted_array)
	end
end

#10.3 Shuffle
#June 28, 2013
	def shuffle array
		shuffled = Array.new(array.length)
		originalSize = array.length
		while(!array.empty?)
			entry = array.pop
			newPosition = rand(originalSize)
			while(shuffled[newPosition] !=nil)
				newPosition = rand(originalSize)
			end
			shuffled[newPosition] = entry
		end
		shuffled
	end

#June 29, 2013
	def dictionary_sort words
		word_hash = Hash[words.collect { |word| [word, word.downcase]} ]
		sorted_lower = word_hash.values.sort
		result = []
		sorted_lower.each {|downcase| result << word_hash.key(downcase) }
		result
	end

#10.5
#July 1, 2013
#Adding thousands, etc. to English number program
def english_number number
	if number < 0 # No negative numbers.
		return 'Please enter a number that isn\'t negative.'
	end

	if number == 0
		return 'zero' 
	end

	# No more special cases! No more returns!
	num_string = '' # This is the string we will return.
	ones_place = ['one',       'two',      'three',
              'four',      'five',     'six',
              'seven',     'eight',    'nine']
	tens_place = ['ten',       'twenty',   'thirty',
              'forty',     'fifty',    'sixty',
              'seventy',   'eighty',   'ninety']
	teenagers  = ['eleven',    'twelve',   'thirteen',
              'fourteen',  'fifteen',  'sixteen',
			'seventeen', 'eighteen', 'nineteen'] # "left" is how much of the number
												#         we still have left to write out.
												#  "write" is the part we are
												#          writing out right now.
												#  write and left...get it?  :)
=begin
	higher_nums = ['trillion', 'billion', 'million', 'thousand']
	higher_digits = [1000000000000, 1000000000, 1000000, 1000]
	counter=0
	while counter<4
		left = number
		write = left/higher_digits[counter]
		left = left - write*higher_digits[counter]

		if write > 0
			higher_num = english_number write
			num_string = num_string + higher_num + ' ' + higher_nums[counter]

			if left > 0
			num_string = num_string + ' '
			end
		end

		counter +=1
	end
=end
	left = number
	write = left/100 # How many hundreds left?
	left = left - write*100 # Subtract off those hundreds.

	if write > 0
		# Now here's the recursion:
		hundreds = english_number write
		num_string = num_string + hundreds + ' hundred' 
		
		if left > 0
    		#  So we don't write 'two hundredfifty-one'...
    		num_string = num_string + ' '
		end 
	end

	write = left/10 # How many tens left?
	left = left - write*10 # Subtract off those tens.

	if write > 0
		if ((write == 1) and (left > 0))
			# Since we can't write "tenty-two" instead of
			# "twelve", we have to make a special exception
			# for these.
			num_string = num_string + teenagers[left-1]
			# The "-1" is because teenagers[3] is
			# 'fourteen', not 'thirteen'.
			# Since we took care of the digit in the
			# ones place already, we have nothing left to write. 
			left = 0
		else
    		num_string = num_string + tens_place[write-1]
    		#  The "-1" is because tens_place[3] is
			# 'forty', not 'thirty'. 
		end

		if left > 0
		# So we don't write 'sixtyfour'... 
			num_string = num_string + '-'
	 	end
	end

	write = left # How many ones left to write out? 
	left = 0 # Subtract off those ones.
		if write > 0
			num_string = num_string + ones_place[write-1] # The "-1" is because ones_place[3] is
			# 'four', not 'three'.
		end
  
  	#  Now we just return "num_string"...
	num_string
end




